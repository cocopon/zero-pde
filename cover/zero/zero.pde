void setup() {
  size(1200, 600);
  blendMode(LIGHTEST);

  drawZero(160);
}

void drawEnergy(float ox, float oy, float oang, color col) {
  int LEN = 112;
  
  float x = ox;
  float y = oy;
  float angle = oang;
  for (int i = 0; i < LEN; i++) {
    float ra = random(-1, 1) * 0.08;
    angle += ra;
    angle += (oang - angle) * 0.0010;
    float rl = random(2);
    x += cos(angle) * rl;
    y += sin(angle) * rl;

    fill(col, map(i, 0, LEN, 255, 0));
    rect(x, y, 1, 1);
    
    if (random(1) < 0.0001) {
      fill(255);
      float sz = random(3);
      ellipse(x, y, sz, sz);
    }
  }
}

void drawCircle(float sz, color col) {
  int RESOL = 300;
  int RIBBON_COUNT = 6;

  float[] lens = new float[RESOL];
  for (int i = 0; i < RESOL; i++) {
    lens[i] = sz;
  }

  int KNOCK_COUNT = 8;
  for (int k = 0; k < KNOCK_COUNT; k++) {
    int ki = floor(random(RESOL));

    for (int i = 0; i < RESOL; i++) {
      lens[i] += pow(sin(map(i - ki, 0, RESOL, 0, PI)), 48) * 4;
    }
  }

  for (int i = 0; i < RESOL; i++) {
    float angle = map(i, 0, RESOL, 0, TWO_PI);
    float d = abs(lens[i] - sz) * 4;

    for (int l = 0; l < RIBBON_COUNT; l++) {
      drawEnergy(
        cos(angle) * (lens[i] + map(l, 0, RIBBON_COUNT, 0, d)),
        sin(angle) * (lens[i] + map(l, 0, RIBBON_COUNT, 0, d)),
        angle - PI / 2,
        col
      );
    }
  }
}

void drawZero(float sz) {
  background(0);

  pushMatrix();
  translate(width / 2, height / 2);

  drawCircle(sz, color(255, 255, 0));
  drawCircle(sz, color(255, 0, 255));
  drawCircle(sz, color(0, 255, 255));

  popMatrix();

  save("cover.png");
}

void mousePressed() {
  drawZero(160);
}

void draw() {
}
