// 波を描く

void setup() {
  size(600, 600);
  noStroke();

  background(255);
  fill(0);
  for (int x = 0; x < width; x += 1) {
    float y = height / 2 + sin(x * 0.01) * 100;
    rect(x, y, 1, 1);
  }
}

void draw() {
}
