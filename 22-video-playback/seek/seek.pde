// 動画をマウスカーソルでシーク

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

	// 描き終えたら一時停止
	mv.pause();
}

void mouseMoved() {
	// 処理が重くなるのを防ぐため、
	// フレーム読み込み準備が完了している場合は書き終わるまで待つ
	if (mv.available() == true) {
		return;
	}

	// マウスカーソルの位置から再生時刻を計算
	// mouseX: 0（左端） ... 0秒
	// mouseX: width（右端） ... 動画の終了時刻
	float t = map(mouseX, 0, width, 0, mv.duration());
	// 時刻を変更して再生
	mv.jump(t);
	mv.play();
}
