// 動画を再生する

// 動画を扱うためのライブラリをインポート
import processing.video.*;

// 動画
Movie mv1;
Movie mv2;

void setup() {
	size(600, 600);

	// 動画を読み込む
	mv1 = new Movie(this, "sample1.mp4");
	mv2 = new Movie(this, "sample2.mp4");
	// 再生を開始
	mv1.play();
	mv2.play();
}	

void draw() {
	// フレーム読み込みの準備ができていない場合、何もしない
	if (mv1.available() == false || mv2.available() == false) {
		return;
	}

	// フレームを読み込む
	mv1.read();
	mv2.read();

	background(0);

	// 動画を描く（動画は画像 PImage と同じように扱える）
	image(mv1, 0, 0);
	image(mv2, 300, 0);
}
