int COUNT = 100;
float[] px;
float[] py;

void drawCurve(float x1, float y1, float x2, float y2, float al) {
  float ang = atan2(y2 - y1, x2 - x1)
    + (random(1) < 0.5 ? -1 : +1) * PI / 2 * random(0.3, 0.7);
  float len = random(dist(x1, y1, x2, y2) * 3);

  // Curves
  stroke(255, al * 0.20);
  noFill();

  for (int j = 0; j < 3; j++) {
    beginShape();

    for (int i = 0; i < 100; i++) {
      float p = map(i, 0, 100 - 1, 0, 1);

      float x = x1 + cos(ang) * p * len;
      float y = y1 + sin(ang) * p * len;
      vertex(
        x * (1 - p) + x2 * p, 
        y * (1 - p) + y2 * p
        );
    }
    endShape();

    ang += random(-1, +1) * 0.1;
    len += random(-1, +1) * 10;
  }

  // Particles
  noStroke();

  for (int i = 0; i < 100; i++) {
    float p = map(i, 0, 100 - 1, 0, 1);

    if (random(1) < 0.02) {
      fill(255, random(0.5, 1) * al);

      float pang = random(TWO_PI);
      float plen = random(10);
      float sz = map(random(1) * random(1), 0, 1, 1, 5);
      float x = x1 + cos(ang) * p * len;
      float y = y1 + sin(ang) * p * len;
      ellipse(
        x * (1 - p) + x2 * p + cos(pang) * plen, 
        y * (1 - p) + y2 * p + sin(pang) * plen, 
        sz, sz
        );
    }
  }
}

void setup() {
  size(1200, 600);

  px = new float[COUNT];
  py = new float[COUNT];

  drawSequence();
}

void drawShapes() {
  for (int j = 0; j < COUNT; j++) {
    for (int i = 0; i < COUNT; i++) {
      float d = dist(px[j], py[j], px[i], py[i]);
      float al = pow(0.50, d * 0.010) * 255;
      if (al > 100) {
        drawCurve(
          px[j], py[j], 
          px[i], py[i], 
          al
        );
      }
    }
  }
}

void drawSequence() {
  background(0);

  for (int i = 0; i < COUNT; i++) {
    px[i] = random(-0.1, 1.1) * width;
    py[i] = random(-0.1, 1.1) * height;
  }

  drawShapes();
  filter(BLUR, 8);
  drawShapes();
}

void mousePressed() {
  drawSequence();
}

void draw() {
}
