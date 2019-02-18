// 影つきペン

void setup() {
  size(600, 600);
  background(255, 255, 255);
}

void mouseDragged() {
  // メインの線を引く
  stroke(0, 0, 0);
  strokeWeight(2);
  line(pmouseX, pmouseY, mouseX, mouseY);

  // Y軸方向に少しずらして、薄い線（影）を引く
  stroke(0, 0, 0, 20);
  strokeWeight(4);
  line(pmouseX, pmouseY + 10, mouseX, mouseY + 10);
}

void draw() {
}
