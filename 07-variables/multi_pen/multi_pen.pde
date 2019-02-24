// 右クリックで複数のペンを切り替える

// どのペンを使っているか（ペンモード）用の変数
//   0: 黒
//   1: 緑
//   2: 赤
//   3: 白（消しゴム）
// と決める
int penMode = 0;

void setup() {
  size(600, 600);
  background(255, 255, 255);
}

// マウスのボタンを押したときに実行されるブロック
void mousePressed() {
  // もし押されたボタンが右ボタンなら
  if (mouseButton == RIGHT) {
    // 次のペンモードに切り替える
    penMode = penMode + 1;

    // 最後のペンモードを超えたら
    if (penMode > 3) {
      // 最初に戻す
      penMode = 0;
    }

    // 画面右上に、現在のペンモードを可視化する

    // ペンモードに応じて塗り色を決める
    if (penMode == 0) {
      fill(20, 20, 40);
    }
    else if (penMode == 1) {
      fill(0, 120, 0);
    }
    else if (penMode == 2) {
      fill(150, 0, 0);
    }
    else if (penMode == 3) {
      fill(255, 255, 255);
    }

    // 円を描いてペンモードを可視化
    stroke(0, 0, 0);
    strokeWeight(2);
    ellipse(width - 40, 40, 20, 20);
  }
}

// マウスをドラッグしたときに実行されるブロック
void mouseDragged() {
  // ペンモードに応じて線の色と太さを変える
  if (penMode == 0) {
    strokeWeight(2);
    stroke(20, 20, 40);
  }
  else if (penMode == 1) {
    strokeWeight(2);
    stroke(0, 120, 0);
  }
  else if (penMode == 2) {
    strokeWeight(2);
    stroke(150, 0, 0);
  }
  else if (penMode == 3) {
    strokeWeight(20);
    stroke(255, 255, 255);
  }

  // 線を描く
  line(pmouseX, pmouseY, mouseX, mouseY);
}

void draw() {
}
