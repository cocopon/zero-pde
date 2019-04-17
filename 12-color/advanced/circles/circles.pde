int TOTAL_INIT_SHAPES = 10;
int MAX_TRIALS = 50;
float MIN_INIT_SIZE = 0.10;
float MAX_INIT_SIZE = 0.20;

ArrayList<Shape> shapes;
Packer packer;
color bgColor;

void setup() {
  size(1200, 600);
  colorMode(HSB, 360, 100, 100);
  noStroke();

  shapes = new ArrayList();

  packer = new Packer(shapes);
  reset();
}

color generateColor() {
  // ここを自分の色パレット精製処理に書き換えるだけで、
  // スケッチ全体の色味を差し替えられる
  
  float rnd = random(0, 100);
  float h = 0;
  if (rnd < 33) {
    h = 85;
  } else if (rnd < 66) {
    h = 170;
  } else {
    h = 340;
  }
  float s = random(0, 100);
  float b = random(0, 100);
  
  return color(h, s, b);
}

void reset() {
  shapes.clear();

  Shape[] shapes = packer.generateInitShapes(TOTAL_INIT_SHAPES);
  for (Shape s : shapes) {
    s.col = generateColor();
  }
  
  bgColor = generateColor();
}

void draw() {
  background(bgColor);

  for (Shape s : shapes) {
    s.draw();
  }
  
  for (int i = 0; i < 100; i++) {
    Shape s = packer.generateFillingShape();
    if (s != null) {
      s.col = generateColor();
    }
  }
}

void mousePressed() {
  saveFrame("out/cover-####.png");
  reset();
}
