class Ellipse implements Effect {
  void setup() {
  }

  void draw(float secs) {
    resetMatrix();
    translate(CANVAS_WIDTH/2.0, CANVAS_HEIGHT/2.0);
    scale(CANVAS_WIDTH/2.0/ASPECT_RATIO, -CANVAS_HEIGHT/2.0);
    clear();
    noStroke();
    fill(255);
    ellipse(0., 0., 1.0, 1.0);
  }
}
