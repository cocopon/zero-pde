// mouseReleased で終点を描いてみたペン

void setup() {
  size(600, 600);
  background(255, 255, 255);
  
  noStroke();
}

void mouseDragged() {
  stroke(0, 0, 0);
  strokeWeight(2);
  line(pmouseX, pmouseY, mouseX, mouseY); 
}

void mouseReleased() {
  noStroke();
  fill(0, 0, 0);
  ellipse(mouseX, mouseY, 10, 10);
}

void draw() {
}
