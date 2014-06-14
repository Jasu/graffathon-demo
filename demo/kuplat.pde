class Kupla {
  public PImage texture;
  Kupla(){  
  }
  void draw(int i) {
        tint(255, 127);  
        texture(texture);
        ellipse(i*10+10, i*10+10, 100, 100);   
  }  
}
 
 class Kuplat {
  public PImage texture; 
  Kupla k[]; 
  void setup() {
    k = new Kupla[10];
    this.texture = loadImage("kupla.jpg");    
    for (int i = 0; i < 10; i++){
      k[i] = new Kupla();
      k[i].texture = this.texture;
    }
  }

  void draw(float secs) {
    strokeWeight(1);
    for (int i = 0; i > 10; i++){
        k[i].draw(i);
    }
    tint(255, 255);
    resetMatrix();
  }
}
