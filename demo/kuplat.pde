class Kupla {
  public PImage texture;
  float x;
  public float y;
  float size;
  float mod;
  float lift;
  Kupla(){
    x = random(width);
    y = random(height); 
    size = random(70); 
    mod = random(7);
    lift = height/(random(30)+200);
  }
  void draw(float secs) {
        tint(255, 127);  
        texture(texture);
        x = x + sin(secs * 0.5)*mod;
        y = y - lift;
        image(texture, x, y, size, size);   
  }  
}
 
 class Kuplat {
  public PImage texture; 
  Kupla k[]; 
  void setup() {
    k = new Kupla[20];
    this.texture = loadImage("kupla.png");    
    for (int i = 0; i < 20; i++){
      k[i] = new Kupla();
      k[i].texture = this.texture;
    }
  }

  void draw(float secs) {
    strokeWeight(1);
    resetMatrix();    
    for (int i = 0; i < 20; i++){
        k[i].draw(secs);
        if (k[i].y < -20){
          k[i] = new Kupla();
          k[i].texture = this.texture;
          k[i].y = height;
        }        
    }
    tint(255, 255);
  
  }
}
