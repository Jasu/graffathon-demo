float defaultFishX[] = {
  1, //Lower lip
  1, //Mouth
  1, //Upper lip

  0.2, //Upper fin begin
  0, //Upper fin top
  -0.3, //Upper fin  end

  -0.5, //Tail begin
  -0.5, //Tail upper
  -0.5, //Tail middle

  -0.5, //Tail lower
  -0.5, //Tail end

  -0.3, //Lower fin begin
  0, //Lower fin bottom
  0.2, //Lower end 
};

float defaultFishY[] = {
  0.1, //Lower lip
  0, //Mouth
  -0.1, //Upper lip

  -0.4, //Upper fin begin
  -0.5, //Upper fin top
  -0.25, //Upper fin  end

  -0.2, //Tail begin
  -0.2, //Tail upper
  -0.2, //Tail middle

  0.2, //Tail lower
  0.2, //Tail end

  0.25, //Lower fin begin
  0.5, //Lower fin bottom
  0.4, //Lower end 
};

float fatnessFishX[] = {
  0, //Lower lip
  0, //Mouth
  0, //Upper lip

  0, //Upper fin begin
  0, //Upper fin top
  0, //Upper fin  end

  0, //Tail begin
  0, //Tail upper
  0, //Tail middle
  0, //Tail lower
  0, //Tail end

  0, //Lower fin begin
  0, //Lower fin bottom
  0, //Lower end 
};

float fatnessFishY[] = {
  0, //Lower lip
  0, //Mouth
  0, //Upper lip

  -1, //Upper fin begin
  -1, //Upper fin top
  -1, //Upper fin  end

  -0.2, //Tail begin
  0, //Tail upper
  0, //Tail middle
  0, //Tail lower
  0.2, //Tail end

  1, //Lower fin begin
  1, //Lower fin bottom
  1, //Lower end 
};

float upperFinFishX[] = {
  0, //Lower lip
  0, //Mouth
  0, //Upper lip

  0, //Upper fin begin
  -1, //Upper fin top
  -0.4, //Upper fin  end

  0, //Tail begin
  0, //Tail upper
  0, //Tail middle
  0, //Tail lower
  0, //Tail end

  0, //Lower fin begin
  0, //Lower fin bottom
  0, //Lower end 
};

float upperFinFishY[] = {
  0, //Lower lip
  0, //Mouth
  0, //Upper lip

  0, //Upper fin begin
  -0.5, //Upper fin top
  -0.3, //Upper fin  end

  0, //Tail begin
  0, //Tail upper
  0, //Tail middle
  0, //Tail lower
  0, //Tail end

  0, //Lower fin begin
  0, //Lower fin bottom
  0, //Lower end 
};

float lowerFinFishX[] = {
  0, //Lower lip
  0, //Mouth
  0, //Upper lip

  0, //Upper fin begin
  0, //Upper fin top
  0, //Upper fin  end

  0, //Tail begin
  0, //Tail upper
  0, //Tail middle
  0, //Tail lower
  0, //Tail end

  -0.1, //Lower fin begin
  -1, //Lower fin bottom
  0.1, //Lower end 
};

float lowerFinFishY[] = {
  0, //Lower lip
  0, //Mouth
  0, //Upper lip

  0, //Upper fin begin
  0, //Upper fin top
  0, //Upper fin  end

  0, //Tail begin
  0, //Tail upper
  0, //Tail middle
  0, //Tail lower
  0, //Tail end

  0.5, //Lower fin begin
  0.5, //Lower fin bottom
  0, //Lower end 
};

float tailLengthFishX[] = {
  0, //Lower lip
  0, //Mouth
  0, //Upper lip

  0, //Upper fin begin
  0, //Upper fin top
  0, //Upper fin  end

  -0.05, //Tail begin
  -0.5, //Tail upper
  -0.25, //Tail middle
  -0.5, //Tail lower
  -0.05, //Tail end

  0, //Lower fin begin
  0, //Lower fin bottom
  0, //Lower end 
};

float tailLengthFishY[] = {
  0, //Lower lip
  0, //Mouth
  0, //Upper lip

  0, //Upper fin begin
  0, //Upper fin top
  0, //Upper fin  end

  0, //Tail begin
  0, //Tail upper
  0, //Tail middle
  0, //Tail lower
  0, //Tail end

  0, //Lower fin begin
  0, //Lower fin bottom
  0, //Lower end 
};

float tailExpandFishX[] = {
  0, //Lower lip
  0, //Mouth
  0, //Upper lip

  0, //Upper fin begin
  0, //Upper fin top
  0, //Upper fin  end

  0, //Tail begin
  -0.6, //Tail upper
  0, //Tail middle
  -0.6, //Tail lower
  0, //Tail end

  0, //Lower fin begin
  0, //Lower fin bottom
  0, //Lower end 
};

float tailExpandFishY[] = {
  0, //Lower lip
  0, //Mouth
  0, //Upper lip

  0, //Upper fin begin
  0, //Upper fin top
  0, //Upper fin  end

  0, //Tail begin
  0, //Tail upper
  0, //Tail middle
  0, //Tail lower
  0, //Tail end

  0, //Lower fin begin
  0, //Lower fin bottom
  0, //Lower end 
};

float mouthOpenFishX[] = {
  0, //Lower lip
  -0.3, //Mouth
  0, //Upper lip

  0, //Upper fin begin
  0, //Upper fin top
  0, //Upper fin  end

  0, //Tail begin
  0, //Tail upper
  0, //Tail middle
  0, //Tail lower
  0, //Tail end

  0, //Lower fin begin
  0, //Lower fin bottom
  0, //Lower end 
};

float mouthOpenFishY[] = {
  0.2, //Lower lip
  0, //Mouth
  -0.2, //Upper lip

  0, //Upper fin begin
  0, //Upper fin top
  0, //Upper fin  end

  0, //Tail begin
  0, //Tail upper
  0, //Tail middle
  0, //Tail lower
  0, //Tail end

  0, //Lower fin begin
  0, //Lower fin bottom
  0, //Lower end 
};

class Fish {
  public float fatness;
  public float upperFin;
  public float lowerFin;
  public float tailLength;
  public float tailExpand;
  public float mouthOpen;
  public PImage texture;
  public Color fillColor;
  public Color strokeColor;

  Fish() {
    this.fatness = 0;
    this.upperFin = 0;
    this.lowerFin = 0;
    this.tailLength = 0;
    this.tailExpand = 0;
    this.mouthOpen = 0;
  }

  void draw() {
    float shapeX[] = defaultFishX;
    float shapeY[] = defaultFishY;
    noStroke();
    this.fillColor.setFill();
    //this.strokeColor.setStroke();

    texture(this.texture);

    beginShape();
    float firstX = 0, firstY = 0;
    for (int i = 0; i < shapeX.length; ++i) {
      float x = shapeX[i];
      float y = shapeY[i];

      x += this.fatness * fatnessFishX[i];
      y += this.fatness * fatnessFishY[i];

      x += this.upperFin * upperFinFishX[i];
      y += this.upperFin * upperFinFishY[i];

      x += this.lowerFin * lowerFinFishX[i];
      y += this.lowerFin * lowerFinFishY[i];

      x += this.tailLength * tailLengthFishX[i];
      y += this.tailLength * tailLengthFishY[i];

      x += this.tailExpand * tailExpandFishX[i];
      y += this.tailExpand * tailExpandFishY[i];

      x += this.mouthOpen * mouthOpenFishX[i];
      y += this.mouthOpen * mouthOpenFishY[i];

      if (i == 0) {
        firstX = x;
        firstY = y;
      }

      vertex(x, y);
    }
    vertex(firstX, firstY);
    endShape();
  }
}

class Fishes implements Effect {
  Fish f;
  PImage texture;

  void setup() {
    f = new Fish();
    f.fillColor = new Color(255,255,255);
    f.strokeColor = new Color(255,0,255);
    this.texture = loadImage("ananas.jpg");
    f.texture = loadImage("ananas.jpg");
  }

  void draw(float secs) {
    resetMatrix();
    clear();
    translate(400, 300);
    scale(100);
    f.fatness = sin(secs) * 0.1;
    f.upperFin = sin(secs*2) / 2.0 + 0.8;
    f.lowerFin = sin(secs*2 + 0.6) / 2.0 + 0.8;
    f.tailExpand = sin(secs*2) / 2.0 + 0.7;
    f.tailLength = sin(secs*2 + 0.6) / 2.0 + 0.7;
    f.mouthOpen = sin(secs*3 + 0.6) / 2.0 + 0.5;
    f.draw();
  }
}
