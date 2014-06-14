class Color {
  public int r;
  public int g;
  public int b;
  public int a;

  Color(int r,int g,int b) {
    this.r = r;
    this.g = g;
    this.b = b;
    this.a = 255;
  }

  Color(int r,int g,int b, int a) {
    this.r = r;
    this.g = g;
    this.b = b;
    this.a = 255;
  }

  public void setFill() {
    fill((float)this.r, (float)this.g, (float)this.b, (float)this.a);
  }

  public void setStroke() {
    stroke((float)this.r, (float)this.g, (float)this.b, (float)this.a);
  }
}

class Background implements Effect {
  Color colors[];
  int numLines;
  int lineHeight;
  int numSplits; 

  void setup() {
    this.numLines = 34;
    this.lineHeight = ceil((float)height / (float)this.numLines);
    this.numSplits = 2;

    this.colors = new Color[6];
    this.colors[0] = new Color(0, 70, 134);
    this.colors[1] = new Color(20, 92, 128);
    this.colors[2] = new Color(0, 100, 140);
    this.colors[3] = new Color(20, 127, 158);
    this.colors[4] = new Color(0, 100, 130);
    this.colors[5] = new Color(20, 92, 118);
  }

  int[] getSplitPoints(int line, float secs) {
    int numSins = 15;
    int[] result = new int[numSins];

    int x = 50;
    int deltaX = width / (numSins + 1);

    for (int i = 0; i < numSins; ++i) {
      float modifier = i % 2 - 1 * sin(secs + i % 4);
      result[i] = ceil(sin((float)line * 0.12 * (i % 3 + 1) + i + (1.0 + secs / 3.0)) * width / 20.0 * modifier + x);
      x += deltaX;
    };
    result = sort(result);
    return result;
  }

  void draw(float secs) {
    resetMatrix();
    clear();
    noStroke();
    for (int i = 0; i < this.numLines; ++i) {
      int y = i * this.lineHeight;
      int[] splitPoints = this.getSplitPoints(i, secs);
      int x1 = 0; 
      int colorIndex = 0;
      for (int j = 0; j <= splitPoints.length; ++j) {
        int x2;
        if (j == splitPoints.length)
          x2 = width;
        else
          x2 = splitPoints[j];
        this.colors[colorIndex % this.colors.length].setFill();
        rect(x1, y, x2 - x1, this.lineHeight);
        x1 = x2;
        colorIndex++;
      }
    }
  }
}
