void setup() {
  size(1200, 600);
  background(255);

  blendMode(SUBTRACT);

  noFill();
}

void mousePressed() {
  int c = (int)random(3);
  if (c == 0) {
    stroke(255, 0, 0);
  } else if (c == 1) {
    stroke(0, 255, 0);
  } else if (c == 2) {
    stroke(0, 0, 255);
  }

  int i = 0;
  while (i < 100) {
    strokeWeight(i);

    ellipse(
      mouseX, mouseY,
      i * 50, i * 50
    );

    i = i + 1;
  }
}

void draw() {
}
