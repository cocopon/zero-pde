int X_COUNT = 10;
int Y_COUNT = 5;
int SZ = 40;
float X_SPACING = SZ;
int[][] types;

void setup() {
  size(1200, 600);
  drawSequence();
}

void randomizeTypes() {
  types = new int[Y_COUNT][X_COUNT];

  int prevType = -2;
  for (int iy = 0; iy < Y_COUNT; iy++) {
    for (int ix = 0; ix < X_COUNT; ix++) {
      do {
        types[iy][ix] = (random(1) < 0.2)
          ? -1
          : (int)(random(1) * 6);
      } while (types[iy][ix] == prevType);

      prevType = types[iy][ix];
    }
  }
}

void drawCells() {
  for (int iy = 0; iy < Y_COUNT; iy++) {
    for (int ix = 0; ix < X_COUNT; ix++) {
      float x = width / 2 + map(ix, 0, X_COUNT - 1, -0.5, +0.5) * ((SZ + X_SPACING) * (X_COUNT - 1));
      float y = height / 2 + map(iy, 0, Y_COUNT - 1, -1, +1) * 160; 

      int t = types[iy][ix];

      if (t == 0) {
        arc(
          x - SZ / 2, y - SZ / 2, SZ * 2, SZ * 2, 
          0, PI / 2
        );
      } else if (t == 1) {
        arc(
          x + SZ / 2, y - SZ / 2, SZ * 2, SZ * 2, 
          PI / 2, PI
        );
      } else if (t == 2) {
        arc(
          x + SZ / 2, y + SZ / 2, SZ * 2, SZ * 2, 
          PI, PI * 3 / 2
        );
      } else if (t == 3) {
        arc(
          x - SZ / 2, y + SZ / 2, SZ * 2, SZ * 2, 
          PI * 3 / 2, PI * 2
        );
      } else if (t == 4) {
        ellipse(
          x, y, SZ / 2, SZ / 2
        );
      } else if (t == 5) {
        float d = (sqrt(2) - 1) * SZ / 2;
        ellipse(
          x - d, y - d, 
          SZ / 4, SZ / 4
        );
        ellipse(
          x + d, y - d, 
          SZ / 4, SZ / 4
        );
        ellipse(
          x + d, y + d, 
          SZ / 4, SZ / 4
        );
        ellipse(
          x - d, y + d, 
          SZ / 4, SZ / 4
        );
      }
    }
  }
}

void drawSequence() {
  background(0);
  noStroke();

  // ブルーム
  fill(255, 100);
  randomizeTypes();
  drawCells();
  filter(BLUR, 4);

  // 本体
  fill(255);
  drawCells();

  // 残像
  fill(255, 20);
  for (int i = 0; i < 2; i++) {
    randomizeTypes();
    drawCells();
  }
}

void mousePressed() {
  drawSequence();
}

void draw() {
}
