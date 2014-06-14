float defaultFishX[] = {
  1, //Lower lip
  0.96, //Mouth
  1, //Upper lip
  0.6,

  0.2, //Upper fin begin
  0, //Upper fin top
  -0.3, //Upper fin top
  -0.3, //Upper fin  end

  -0.3, //Tail begin
  -0.35, //Tail upper
  -0.4, //Tail middle
  -0.35, //Tail lower
  -0.3, //Tail end

  -0.3, //Lower fin begin
  -0.3, //Lower fin bottom
  0.2, //Lower end 

  0.6,
};

float defaultFishY[] = {
  0.1, //Lower lip
  0, //Mouth
  -0.1, //Upper lip
  -0.28,

  -0.3, //Upper fin begin
  -0.35, //Upper fin top
  -0.5, //Upper fin top
  -0.15, //Upper fin  end

  -0.2, //Tail begin
  -0.17, //Tail upper
  -0, //Tail middle

  0.17, //Tail lower
  0.2, //Tail end

  0.15, //Lower fin begin
  0.5, //Lower fin bottom
  0.3, //Lower end 

  0.28,
};

float upperFinFishX[] = {
  0, //Lower lip
  0, //Mouth
  0, //Upper lip
  0,

  0, //Upper fin begin
  -0.05, //Upper fin top
  -0.03, //Upper fin top
  0, //Upper fin  end

  0, //Tail begin
  0, //Tail upper
  0, //Tail middle
  0, //Tail lower
  0, //Tail end

  0, //Lower fin begin
  0, //Lower fin bottom
  0, //Lower end 

  0,
};

float upperFinFishY[] = {
  0, //Lower lip
  0, //Mouth
  0, //Upper lip
  0,

  0, //Upper fin begin
  -0.4, //Upper fin top
  -0.5, //Upper fin top
  0, //Upper fin  end

  0, //Tail begin
  0, //Tail upper
  0, //Tail middle
  0, //Tail lower
  0, //Tail end

  0, //Lower fin begin
  0, //Lower fin bottom
  0, //Lower end 

  0,
};

float lowerFinFishX[] = {
  0, //Lower lip
  0, //Mouth
  0, //Upper lip
  0,

  0, //Upper fin begin
  0, //Upper fin top
  0, //Upper fin top
  0, //Upper fin  end

  0, //Tail begin
  0, //Tail upper
  0, //Tail middle
  0, //Tail lower
  0, //Tail end

  0, //Lower fin begin
  -0.05, //Lower fin bottom
  0, //Lower end 

  0,
};

float lowerFinFishY[] = {
  0, //Lower lip
  0, //Mouth
  0, //Upper lip
  0,

  0, //Upper fin begin
  0, //Upper fin top
  0, //Upper fin top
  0, //Upper fin  end

  0, //Tail begin
  0, //Tail upper
  0, //Tail middle
  0, //Tail lower
  0, //Tail end

  0, //Lower fin begin
  0.5, //Lower fin bottom
  0, //Lower end 

  0,
};

float tailLengthFishX[] = {
  0, //Lower lip
  0, //Mouth
  0, //Upper lip
  0,

  0, //Upper fin begin
  0, //Upper fin top
  0, //Upper fin top
  0, //Upper fin  end

  -0.25, //Tail begin
  -0.65, //Tail upper
  -0.25, //Tail middle
  -0.65, //Tail lower
  -0.25, //Tail end

  0, //Lower fin begin
  0, //Lower fin bottom
  0, //Lower end 

  0,
};

float tailLengthFishY[] = {
  0, //Lower lip
  0, //Mouth
  0, //Upper lip
  0,

  0, //Upper fin begin
  0, //Upper fin top
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

  0,
};

float tailExpandFishX[] = {
  0, //Lower lip
  0, //Mouth
  0, //Upper lip
  0,

  0, //Upper fin begin
  0, //Upper fin top
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

  0,
};

float tailExpandFishY[] = {
  0, //Lower lip
  0, //Mouth
  0, //Upper lip
  0,

  0, //Upper fin begin
  0, //Upper fin top
  0, //Upper fin top
  0, //Upper fin  end

  0, //Tail begin
  -0.35, //Tail upper
  0, //Tail middle
  0.35, //Tail lower
  0, //Tail end

  0, //Lower fin begin
  0, //Lower fin bottom
  0, //Lower end 

  0,
};

float mouthOpenFishX[] = {
  0, //Lower lip
  -0.2, //Mouth
  0, //Upper lip
  0,

  0, //Upper fin begin
  0, //Upper fin top
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

  0,
};

float mouthOpenFishY[] = {
  0.05, //Lower lip
  0, //Mouth
  -0.05, //Upper lip
  0,

  0, //Upper fin begin
  0, //Upper fin top
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

  0,
};

class Fish {
  public float upperFin;
  public float lowerFin;
  public float tailLength;
  public float tailExpand;
  public float mouthOpen;
  public PImage texture;
  public Color fillColor;
  public Color strokeColor;

  public float speedX;
  public float speedY;
  public float initSpeedX;
  public float initSpeedY;
  public float x;
  public float y;

  public float phase;

  public void step(float sec, float secdiff) {
    //x += speedX * secdiff;
    //y += speedY * secdiff; 

    speedX *= 1 - 2.995 * secdiff;
    speedY *= 1 - 2.995 * secdiff;

    mouthOpen = sin(sec * 3 + phase) * 0.5 + 0.5;

    upperFin *= 1.0 - 0.95*secdiff;
    lowerFin *= 1.0  - 0.95*secdiff;
    tailExpand *= 1 - 0.85*secdiff;
    tailLength *= 1 - 0.85*secdiff;
  }

  public void pulse() {
    upperFin = 1;
    lowerFin = 1;
    tailLength = 1;
    tailExpand = 1;
    speedX = initSpeedX;
    speedY = initSpeedY;
  }

  Fish() {
    this.upperFin = 0;
    this.lowerFin = 0;
    this.tailLength = 0;
    this.tailExpand = 0;
    this.mouthOpen = 0;
  }

  void draw() {
    float shapeX[] = defaultFishX;
    float shapeY[] = defaultFishY;

    pushMatrix();
    translate(x, y);
    rotate(atan2(initSpeedX, initSpeedY));

    //this.fillColor.setFill();
    strokeWeight(0.07);
    this.strokeColor.setStroke();
    noStroke();


    beginShape();
    texture(this.texture);
    float firstX = 0, firstY = 0, firstU = 0, firstV = 0;
    for (int i = 0; i < shapeX.length; ++i) {
      float x = shapeX[i];
      float y = shapeY[i];

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
      
      float u = (x + 1) / 2;
      float v = (y + 1) / 2;
      u *= 512;
      v *= 512;

      vertex(x, y, u, v);


      if (i == 0) {
        firstX = x;
        firstY = y;
        firstU = u;
        firstV = v;
      }
    }

    vertex(firstX, firstY, firstU, firstV);
    endShape();

    fill(0);
    ellipse(0.7, -0.1, 0.13, 0.13);

    fill(255);
    ellipse(0.74, -0.14, 0.04, 0.04);

    popMatrix();
  }
}

class Fishes implements Effect {
  Fish f;
  PImage texture;
  int lastPulse;

  void setup() {
    lastPulse = 0;
    f = new Fish();
    f.phase = 1;
    f.strokeColor = new Color(0,94,128);
    this.texture = loadImage("ananas.jpg");
    f.texture = this.texture;
    f.x = 10;
    f.y = 5;
    f.speedX = 0;
    f.speedY = 0;
    f.initSpeedX = 0;
    f.initSpeedY = 0;
    lastSec = 0;
  }

  float lastSec;

  void draw(float secs) {
    if (secs > lastPulse) {
      lastPulse = ceil(secs);
      f.pulse();
    }

    resetMatrix();
    scale(60);

    float delta = secs - lastSec;
    if (lastSec == 0)
      delta = 0;
    f.step(secs, delta);
    lastSec = secs;

    f.draw();
  }
}
