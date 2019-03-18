int SIZE = 10;
int SPACING = 30;
PVector[][] field;

int COUNT = 10;
Agent[] agents;

void setup() {
  size(1200, 600);
  noStroke();
  
  blendMode(SUBTRACT);
  colorMode(HSB, 360, 100, 100);

  field = new PVector[SIZE][SIZE];
  for (int iy = 0; iy < SIZE; iy++) {
    for (int ix = 0; ix < SIZE; ix++) {
      field[iy][ix] = new PVector();
    }
  }

  agents = new Agent[COUNT];
  for (int i = 0; i < COUNT; i++) {
    agents[i] = new Agent();
  }
}

void draw() {
  background(0, 0, 100);

  // グリッドの原点（左上）
  float ox = (width - (SPACING * (SIZE - 1))) / 2;
  float oy = (height - (SPACING * (SIZE - 1))) / 2;

  for (int iy = 0; iy < SIZE; iy++) {
    for (int ix = 0; ix < SIZE; ix++) {
      pushMatrix();

      float x = ox + ix * SPACING;
      float y = oy + iy * SPACING;
      translate(x, y);

      PVector f = field[iy][ix];
      rotate(f.heading());

      // 時間経過による減衰
      f.mult(0.98);
      
      PVector fn = f.copy().normalize();
      float m = f.mag();
      fill(
        map(abs(fn.x), 0, 1, 120, 240),
        100, 100,
        m * 10
      );
      float len = (1 - pow(0.9, m * 0.10)) * 120; 
      float sw = pow(m * 0.02, 2);
      // 帯
      rect(
        0, -sw / 2,
        len, sw
      );

      // 先端
      fill(360);
      rect(
        len - sw / 2, -sw / 2,
        sw, sw
      );

      // コア
      rect(-1, -1, 2, 2);

      popMatrix();
    }
  }

  // エージェントによるインタラクション
  for (int i = 0; i < COUNT; i++) {
    Agent a = agents[i];

    a.update();

    PVector nvel = a.vel.copy();
    nvel.normalize();

    for (int iy = 0; iy < SIZE; iy++) {
      for (int ix = 0; ix < SIZE; ix++) {
        float x = ox + ix * SPACING;
        float y = oy + iy * SPACING;
        float d = dist(x, y, a.pos.x, a.pos.y);
        PVector df = nvel.copy();
        df.mult(pow(0.7, d * 0.1) * 30);
        field[iy][ix].add(df);
      }
    }
  }
}

void mouseMoved() {
  // マウスによるインタラクション
  PVector nvel = new PVector(
    mouseX - pmouseX,
    mouseY - pmouseY
  );
  nvel.normalize();

  // グリッドの原点（左上）
  float ox = (width - (SPACING * (SIZE - 1))) / 2;
  float oy = (height - (SPACING * (SIZE - 1))) / 2;

  for (int iy = 0; iy < SIZE; iy++) {
    for (int ix = 0; ix < SIZE; ix++) {
      float x = ox + ix * SPACING;
      float y = oy + iy * SPACING;
      float d = dist(x, y, mouseX, mouseY);
      PVector df = nvel.copy();
      df.mult(pow(0.7, d * 0.1) * 40);
      field[iy][ix].add(df);
    }
  }
}
