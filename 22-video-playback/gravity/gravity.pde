// 動画をマウスカーソルでシーク

// 動画を扱うためのライブラリをインポート
import processing.video.*;

// 動画
Movie mv;

// ボールの位置と速度
float bx;
float by;
float vx;
float vy;

void setup() {
	size(600, 600);

  // ボールの初期位置・速度を設定
	bx = width / 2;
	by = 0;
	vx = 0;
	vy = 0;

	// 動画を読み込む
	mv = new Movie(this, "sample.mp4");
	// 再生を開始
	mv.play();
}	

void draw() {
	// ボールに下向きの加速度（重力）を付加
	vy += 0.2;
	// 速度にもとづき位置を更新
	bx += vx;
	by += vy;
	// 地面に達したら反発
	if (by > height) {
		by = height;
		vy *= -0.8;
	}

	// フレーム読み込みの準備ができていない場合、何もしない
	if (mv.available() == false) {
		return;
	}

	// フレームを読み込む
	mv.read();

	// ボールの位置から再生時刻を計算
	float t = map(by, 0, height, 0, mv.duration() / 2);
	// 時刻を変更して再生
	mv.jump(t);

	background(0);

	// 動画を描く（動画は画像 PImage と同じように扱える）
	image(mv, 0, 0);

	// ボールも描く
	noStroke();
	fill(255, 0, 0, 50);
	ellipse(bx, by, 50, 50);
}

// マウスをドラッグしたときに実行されるブロック
void mouseDragged() {
	// マウス位置にボールを移動
	bx = mouseX;
	by = mouseY;
	// 速度は0に初期化
	vx = 0;
	vy = 0;
}
