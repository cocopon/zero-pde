// 同心円で時刻を表現する時計

void setup() {
  size(600, 600);
}

void draw() {
  background(0, 0, 0);

  noFill();
  stroke(50, 50, 50);

  // 時針
  strokeWeight(8);
  ellipse(300, 300, hour() * 25, hour() * 25);

  // 分針
  strokeWeight(4);
  ellipse(300, 300, minute() * 10, minute() * 10);

  // 秒針
  // 秒数で太さを変えてみる
  strokeWeight(second());
  stroke(255, 255, 255);
  ellipse(300, 300, second() * 10, second() * 10);
}
