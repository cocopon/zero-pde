int COUNT = 1000;
float GRAV = 0.1;
float FRIC_X = 0;
float FRIC_Y = 0.0001;
float BOUNCE = 0.9;

class Particle {
  PVector pos = new PVector();
  PVector vel = new PVector();

  void update() {
    this.vel.y += GRAV;
    this.vel.x *= 1 - FRIC_X;
    this.vel.y *= 1 - FRIC_Y;
    this.pos.add(vel);

    if (this.pos.y > height) {
      this.pos.y = height;
      this.vel.y *= -BOUNCE;
    }
  }

  void draw() {
    stroke(random(1) * random(1) * 100, 100, 10);

    PVector vn = this.vel.copy().normalize();
    line(
      this.pos.x, this.pos.y,
      this.pos.x + vn.x * 3, this.pos.y + vn.y * 3
    );

    if (random(1) < 0.01) {
      pushStyle();
      noStroke();
      fill(0, 0, random(100));
      float sz = random(1, 3);
      ellipse(
        this.pos.x + random(-2, 2),
        this.pos.y + random(-2, 2),
        sz, sz
      );
      popStyle();
    }
  }
}

Particle[] ps;

void setup() {
  size(1200, 600);
  background(0);
  blendMode(ADD);
  colorMode(HSB, 360, 100, 100);

  ps = new Particle[COUNT];
  for (int i = 0; i < COUNT; i++) {
    ps[i] = new Particle();
    ps[i].pos.x = random(width);
    ps[i].pos.y = random(height);

    float a = random(TWO_PI);
    float l = random(5);
    ps[i].vel.x = cos(a) * l;
    ps[i].vel.y = sin(a) * l;
  }
}

void draw() {
  for (int j = 0; j < 10; j++) {
    for (int i = 0; i < COUNT; i++) {
      ps[i].update();
      ps[i].draw();
    }
  }
}

void mousePressed() {
  save("cover.png");
}
