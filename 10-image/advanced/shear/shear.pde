float CELL_SIZE = 30;
int Y_OFFSET = 100;

float x;
float y;
PImage img;

void setup() {
  size(1200, 600);
  background(0, 0, 0);

  img = loadImage("monalisa.jpg");
  image(
    img,
    0, -Y_OFFSET,
    img.width * 2, img.height * 2
  );
}

void draw() {
  // 画像を描く先のXY座標
  int dstx = (int)x;
  int dsty = (int)y;
  
  // 描く画像のXY座標
  int srcx = (int)x + (int)random(-CELL_SIZE, CELL_SIZE);
  int srcy = (int)y + (int)random(-CELL_SIZE, CELL_SIZE);
  
  copy(
    img,
    srcx, srcy + Y_OFFSET,
    (int)CELL_SIZE, (int)CELL_SIZE,
    dstx * 2, dsty * 2,
    (int)CELL_SIZE * 2, (int)CELL_SIZE * 2
  );

  x = x + CELL_SIZE;
  
  if (x >= width) {
    x = 0;
    y = y + CELL_SIZE;
  }
}

void mousePressed() {
  save("cover.png");
}
