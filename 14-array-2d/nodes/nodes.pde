int COUNT = 200;
float[] px;
float[] py;

PImage img;

void setup() {
  size(1200, 600);

  px = new float[COUNT];
  py = new float[COUNT];
  
  for (int i = 0; i < COUNT; i++) {
    px[i] = random(-0.1, 1.1) * width;
    py[i] = random(-0.1, 1.1) * height;
  }
}

void draw() {
  background(0);

  for (int j = 0; j < COUNT; j++) {
    for (int i = 0; i < COUNT; i++) {
      float dx = px[j] - px[i];
      float dy = py[j] - py[i];
      float d = sqrt(dx * dx * 0.5 + dy * dy * 1.0);

      float al = pow(0.5, d * 0.05) * 255;
      if (al > 25) {
        stroke(255, al);
        line(
          px[j], py[j],
          px[i], py[i]
        );
      }
    }
  }

  noStroke();
  fill(255);
  for (int i = 0; i < COUNT; i++) {
    color col = get(floor(px[i]), floor(py[i]));
    float b = brightness(col);
    fill(255, b * 0.5);
    ellipse(
      px[i], py[i],
      4, 4
    );
  }
}

void mousePressed() {
  for (int i = 0; i < COUNT; i++) {
    px[i] = random(-0.1, 1.1) * width;
    py[i] = random(-0.1, 1.1) * height;
  }
}
