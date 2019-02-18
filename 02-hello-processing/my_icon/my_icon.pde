// 自分のアイコンを描いてみる例

void setup() {
  size(600, 600);
}

void draw() {
  background(169, 210, 231);

  strokeWeight(10);

  stroke(0, 0, 0);
  fill(253, 253, 249);
  ellipse(300, 300, 400, 400);

  noStroke();
  fill(0, 0, 0);
  ellipse(240, 230, 40, 40);

  noStroke();
  fill(0, 0, 0);
  ellipse(360, 230, 40, 40);

  fill(95, 27, 16);
  rect(200, 300, 200, 120, 50, 50, 30, 30);
}
