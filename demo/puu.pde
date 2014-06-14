 class Puu { 
  float leftr = 0.85;
  float rightr = 0.95; 
  void setup() {
  }

  void draw(float secs, float x, float y, float r) {
    strokeWeight(6);
    
    resetMatrix();

    
    stroke(0, 255, 0);
    line(x,height,x,height-y); //varrenpidennys
    tree(x, y, r, 0, secs, 0.5);

  }
  void tree(float x, float y, float r, int end, float secs, float ang) {
    if (end > 9 || r <= 0){ 
      return; 
    }
    strokeWeight(6 - end/1.8);
    float asdf = sin(secs)/20;
    //vasen
    float x2 = x + (r * cos(PI/4 + ((PI/2)*ang)));
    float y2 = y + (r * sin(PI/4 + ((PI/2)*ang)));
    line(x,height-y,x2,height-y2);
    tree(x2, y2, r*leftr, end+1, secs, ang+0.2+asdf);
    //oikea      
    tree(x2, y2, r*rightr, end+1, secs, ang-0.2+asdf);
  }
}
