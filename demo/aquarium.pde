class Aquarium implements Effect {
  Background background;
  Fishes fishes;
  Puu puu;
  Kuplat kuplat;


  public void setup() {
    background = new Background();
    fishes = new Fishes();
    puu = new Puu();
    background.setup();
    fishes.setup();
    puu.setup();
    kuplat = new Kuplat();
    kuplat.setup();
  }
  public void draw(float secs) {
    background.draw(secs);

    float r = height/12;
    
    float x = width/2-(width/4)+(width/8);
    float y = 0-(r/1.3);     
    puu.draw(secs, x, y, r, 0.5, 0.3, -0.2);

    
    r = height/13;
    x = width/2+(width/4);
    y = height/15;     
    puu.draw(secs, x, y, r, 0.5, 0.2, -0.4);    

    r = height/15;
    x = width/(width/4);
    y = 0-1.5*r;     
    puu.draw(secs, x, y, r, 0.5, 0.4, -0.2); 

    r = height/17;
    x = width/2;
    y = 0-2*r;     
    puu.draw(secs, x, y, r, 0.5, 0.2, -0.2); 

    fishes.draw(secs);
    
    kuplat.draw(secs);
  }
}
