 class Puu implements Effect {
  int div1 = 1;
  int div2 = 10;
  float r = 30;  
  void setup() {
  }

  void draw(float secs) {
    float x = width/2;
    float y = 0; 

    background(0);
    
    stroke(0, 255, 0);
    
    tree(x, y, r, 15);

  }
  void tree(float x, float y, float r, int end) {
    if (end < 1){ 
      return; 
    }
    float x2 = x + (r * cos(PI/4 + ((PI/2)/div1)));
    float y2 = y + (r * sin(PI/4 + ((PI/2)/div1)));
    line(x,height-y,x2,height-y2);
    tree(x2, y2, r, end-1);    
    x2 = x + (r * cos(PI/4 + ((PI/2)/div2)));
    y2 = y + (r * sin(PI/4 + ((PI/2)/div2)));
    line(x,height-y,x2,height-y2);    
    tree(x2, y2, r, end-1);
  }
}
