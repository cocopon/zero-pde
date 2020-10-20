// 動画を再生する（クリックで一時停止）

// 動画を扱うためのライブラリをインポート
import processing.video.*;

// 動画
Movie mv;

void setup() {
	size(600, 600);

	// 動画を読み込む
	mv = new Movie(this, "sample.mp4");
	// 再生を開始
	mv.play();
}	

void draw() {
	// フレーム読み込みの準備ができていない場合、何もしない
	if (mv.available() == false) {
		return;
	}

	// フレームを読み込む
	mv.read();

	background(0);

	// 動画を描く（動画は画像 PImage と同じように扱える）
	image(mv, 0, 0);
}

void mousePressed() {
  if (mv.isPlaying() == true) {
    mv.pause();
  }
  else {
    mv.play();
  }
}
