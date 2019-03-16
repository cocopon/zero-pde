// 右クリックで切り替える多色ペン

// 現在のペンの種類
int penmode;

void setup() {
  size(600, 600);
  background(255);

  penmode = 0;
}

void mousePressed() {
  if (mouseButton == RIGHT) {
    // 次のペンモードへ
    penmode += 1;

    // ペンのモードが最後まで達したら、最初のペンに戻す
    if (penmode > 4) {
      penmode = 0;
    }
  }
}

void mouseDragged() {
  // ペンモードによって色や太さを変える
  if (penmode == 0) {
    stroke(0);
    strokeWeight(1);
  }
  else if (penmode == 1) {
    stroke(255, 0, 0);
    strokeWeight(1);
  }
  else if (penmode == 2) {
    stroke(0, 200, 0);
    strokeWeight(1);
  }
  else if (penmode == 3) {
    stroke(0, 0, 255);
    strokeWeight(1);
  }
  else {
    // 消しゴム
    stroke(255);
    strokeWeight(10);
  }

  line(pmouseX, pmouseY, mouseX, mouseY);
}

void draw() {
}
