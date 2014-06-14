class Aquarium implements Effect {
  Background background;
  Fishes fishes;
  Puu puu;


  public void setup() {
    background = new Background();
    fishes = new Fishes();
    puu = new Puu();
    background.setup();
    fishes.setup();
    puu.setup();
  }
  public void draw(float secs) {
    background.draw(secs);

    float r = height/12;
    
    float x = width/2-(width/4);
    float y = 0-(r/2);     
    puu.draw(secs, x, y, r);

    fishes.draw(secs);
    
    r = height/13;
    x = width/2+(width/4);
    y = height/15;     
    puu.draw(secs, x, y, r);    
  }
}
