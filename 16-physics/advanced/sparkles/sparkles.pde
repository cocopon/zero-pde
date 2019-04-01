int COUNT = 1000;

class Particle {
  PVector pos = new PVector();
  PVector vel = new PVector();

  void update() {
    this.pos.add(vel);
  }

  void draw() {
    stroke(random(1) * random(1) * 100, 100, 20);

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

class Attractor {
  PVector pos = new PVector();
  float strength = random(1);
  float range = random(0.1, 0.8);
  float df = random(0.01, 0.1);

  void update(Particle[] ps) {
    for (Particle p : ps) {
      PVector n = new PVector(
        p.pos.x - this.pos.x,
        p.pos.y - this.pos.y
      );
      float d = n.mag();
      n.normalize();

      float po = pow(this.range, d * this.df) * this.strength; 

      p.vel.x += n.x * po;
      p.vel.y += n.y * po;
    }
  }
}

Particle[] ps;
Attractor[] as;

void setup() {
  size(1200, 600);
  background(0);
  blendMode(ADD);
  colorMode(HSB, 360, 100, 100);

  ps = new Particle[COUNT];
  for (int i = 0; i < COUNT; i++) {
    ps[i] = new Particle();
  }

  as = new Attractor[10];
  for (int i = 0; i < 10; i++) {
    as[i] = new Attractor();
  }

  regenerate();
}

void draw() {
  for (int j = 0; j < 10; j++) {
    for (int i = 0; i < 10; i++) {
      as[i].update(ps);
    }

    for (int i = 0; i < COUNT; i++) {
      ps[i].update();
      ps[i].draw();
    }
  }
}

void regenerate() {
  background(0);
  blendMode(ADD);

  for (int i = 0; i < COUNT; i++) {
    ps[i] = new Particle();
    ps[i].pos.x = random(width);
    ps[i].pos.y = random(height);

    float a = random(TWO_PI);
    float l = random(0);
    ps[i].vel.x = cos(a) * l;
    ps[i].vel.y = sin(a) * l;
  }

  for (int i = 0; i < 10; i++) {
    as[i] = new Attractor();
    as[i].pos.x = random(width);
    as[i].pos.y = random(height);
  }
}

void mousePressed() {
  save("cover.png");
  regenerate();
}
