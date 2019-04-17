class Packer {
  ArrayList<Shape> shapes_;

  Packer(ArrayList<Shape> shapes) {
    shapes_ = shapes;
  }

  float getMaxRadius(PVector center) {
    float maxRadius = abs(center.y - height / 2 * random(0.8, 1.0)); 

    for (Shape s : shapes_) {
      maxRadius = min(
        PVector.sub(s.pos, center).mag() - s.radius,
        maxRadius
      );
    }

    return maxRadius;
  }

  Shape[] generateInitShapes(int totalShapes) {
    Shape[] initShapes = new Shape[totalShapes];

    for (int i = 0; i < totalShapes; i++) {
      PVector pos = new PVector();
      float maxRadius;
      do {
        pos.x = round(random(width));
        pos.y = round(random(height));
        maxRadius = min(
            getMaxRadius(pos),
            round(min(height, width) * 0.5)
            );
      } while (maxRadius < 0);

      Shape s = new Shape();
      s.pos = pos.copy();
      s.radius = round(random(
        maxRadius * MIN_INIT_SIZE,
        maxRadius * MAX_INIT_SIZE)
      );

      shapes_.add(s);
      initShapes[i] = s;
    }

    return initShapes;
  }

  Shape generateFillingShape() {
    PVector pos = new PVector();
    int totalTrials = 0;
    float radius;

    do {
      pos.x = round(random(width));
      pos.y = round(random(height));
      radius = getMaxRadius(pos);
      ++totalTrials;
    } while (radius < 0 && totalTrials < MAX_TRIALS);
    if (radius < 0) {
      return null;
    }

    Shape s = new Shape();
    s.pos = pos.copy();
    s.radius = radius;
    shapes_.add(s);
    return s;
  }
}
