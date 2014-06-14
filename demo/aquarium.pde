class Aquarium implements Effect {
  Background background;
  Fishes fishes;


  public void setup() {
    background = new Background();
    fishes = new Fishes();
    background.setup();
    fishes.setup();
  }
  public void draw(float secs) {
    background.draw(secs);
    fishes.draw(secs);
  }
}
