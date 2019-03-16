// シンプルなペン

void setup() {
  size(600, 600);
  background(255);
}

void mouseDragged() {
  line(pmouseX, pmouseY, mouseX, mouseY);
}

void draw() {
}
