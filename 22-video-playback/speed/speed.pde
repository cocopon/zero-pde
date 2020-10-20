// 動画を再生する（再生速度を変更）

// 動画を扱うためのライブラリをインポート
import processing.video.*;

// 動画
Movie mv;

void setup() {
	size(600, 600);

	// 動画を読み込む
	mv = new Movie(this, "sample.mp4");
	// ループ再生を開始
	mv.loop();
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

void mouseMoved() {
  // マウスカーソルの位置で再生速度を変更
  // mouseX: 0（左端） ... 0.1倍速
  // mouseX: width (右端） ... 5倍速
	mv.speed(map(mouseX, 0, width, 0.1, 5));
}
