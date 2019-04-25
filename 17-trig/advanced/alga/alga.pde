int COUNT = 10000;
int MAIN_FREQ = 4;
int SUB_FREQ = 10;
float MAIN_AMP = 600;
float SUB_AMP = 0.2;

void setup() {
  size(1200, 600);
  noStroke();

  drawAlga(width / 2, height / 2, random(TWO_PI));
}

void drawDot(float ox, float oy, float sz, float al) {
  for (int p = 0; p < al; p++) {
    float da = random(TWO_PI);
    float dl = random(sz);
    rect(
      ox + cos(da) * dl,
      oy + sin(da) * dl,
      1, 1
    );
  }
}

void drawAlga(float ox, float oy, float oa) {
  background(255);
  fill(0, 5);

  for (int i = 0; i < COUNT; i++) {
    float ip = i / (float)COUNT;

    float ma = ip * 2 * PI;
    float ml = sin(oa + MAIN_FREQ * ma) * MAIN_AMP;
    float mx = cos(ma) * ml;
    float my = sin(ma) * ml;

    float sa = ma + PI / 2;
    float sl = sin(SUB_FREQ * ma) * MAIN_AMP * SUB_AMP;
    float sx = cos(sa) * sl;
    float sy = sin(sa) * sl;

    float x = ox + mx + sx;
    float y = oy + my + sy;
    float d = dist(x, y, width / 2, height / 2);
    float szo = pow(0.997, d * 0.05);
    float sz = map(szo, 0, 1, 160, 1);
    float al = map(sz, 2, 15, 98, 1);
    drawDot(x, y, sz, al);
  }
}

void mousePressed() {
  COUNT = floor(random(10000, 100000));
  MAIN_FREQ = floor(map(random(1), 0, 1, 1, 5)) * 2;
  MAIN_AMP = height;
  SUB_FREQ = floor(random(100, 10000));
  SUB_AMP = random(0.4);

  drawAlga(random(width), random(height), random(TWO_PI));

  save("cover.png");
}

void draw() {
}
