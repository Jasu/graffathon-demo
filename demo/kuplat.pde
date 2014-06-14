class Kupla {
  public PImage texture;
  float x;
  float y;
  float size;
  float mod;
  float lift;
  Kupla(){
    x = random(width);
    y = random(height); 
    size = random(70); 
    mod = random(100)/10;
    lift = height/(random(30)+20);
  }
  void draw(float secs) {
        tint(255, 127);  
        texture(texture);
        x = x + sin(secs)*mod;
        y = y - lift;
        image(texture, x, y, size, size);   
  }  
}
 
 class Kuplat {
  public PImage texture; 
  Kupla k[]; 
  void setup() {
    k = new Kupla[10];
    this.texture = loadImage("kupla.png");    
    for (int i = 0; i < 10; i++){
      k[i] = new Kupla();
      k[i].texture = this.texture;
    }
  }

  void draw(float secs) {
    strokeWeight(1);
  resetMatrix();    
    for (int i = 0; i < 10; i++){
        k[i].draw(secs);
    }
    tint(255, 255);
  
  }
}
