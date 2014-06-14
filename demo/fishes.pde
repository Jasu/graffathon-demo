Mesh fishDefault;
Mesh fishUpperFin;
Mesh fishLowerFin;
Mesh fishTail;
Mesh fishMouth;

Mesh seaStar;
Mesh seaStarPulse;

Mesh squid;


class Fish {
  MeshSet meshSet;
  public float fins;
  public float tail;
  public float mouth;

  public float fishiness;
  public float seastarness;
  public float energy;

  public PImage fishTexture;
  public PImage seastarTexture;
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


    energy *= 1.0 - 0.95 * secdiff;

    seastarness = 0.5 * cos(sec * 0.5) + 0.5;
    fishiness = 1.0 - seastarness;

    //meshSet.parameters[1] *= 1.0 - 0.95*secdiff;
    //meshSet.parameters[2] *= 1.0 - 0.95*secdiff;
    //meshSet.parameters[3] *= 1.0 - 0.85*secdiff;
    //meshSet.parameters[0] = 1.0 - (0.5 * cos(sec) + 0.5);
    //meshSet.parameters[5] = 0.5 * cos(sec) + 0.5;

    meshSet.parameters[0] = fishiness;
    meshSet.parameters[1] = energy * fishiness;
    meshSet.parameters[2] = energy * fishiness;
    meshSet.parameters[3] = energy * fishiness;
    meshSet.parameters[4] = (sin(sec * 3 + phase) * 0.5 + 0.5) * fishiness;
    meshSet.parameters[5] = seastarness;
    meshSet.parameters[6] = energy * seastarness;
  }

  public void pulse() {
    //meshSet.parameters[1] = 1;
    //meshSet.parameters[2] = 1;
    //meshSet.parameters[3] = 1;
    energy = 1;
    speedX = initSpeedX;
    speedY = initSpeedY;
  }

  Fish() {
    meshSet = new MeshSet(7, 50);
    meshSet.setMesh(0, fishDefault, 0);
    meshSet.setMesh(1, fishUpperFin, 0);
    meshSet.setMesh(2, fishLowerFin, 0);
    meshSet.setMesh(3, fishTail, 0);
    meshSet.setMesh(4, fishMouth, 0);
    meshSet.setMesh(5, seaStar, 0.3);
    meshSet.setMesh(6, seaStarPulse, 0.3);

    meshSet.parameters[0] = 1;
    meshSet.parameters[1] = 0;
    meshSet.parameters[2] = 0;
    meshSet.parameters[3] = 0;
    meshSet.parameters[4] = 0;
    meshSet.parameters[5] = 0;
  }

  void draw() {
    pushMatrix();

    translate(x, y);
    rotate(atan2(initSpeedX, initSpeedY));

    Mesh m = meshSet.getMesh();
    m.renderWithImage(fishTexture, 255);
    m.renderWithImage(seastarTexture, (int)(seastarness * 255));

    fill(0);
    ellipse(0.7, -0.1, 0.13, 0.13);

    fill(255);
    ellipse(0.74, -0.14, 0.04, 0.04);

    popMatrix();
  }
}

class Fishes implements Effect {
  Fish f;
  PImage fishTexture;
  PImage seastarTexture;
  int lastPulse;

  void setup() {
    fishDefault = new Mesh(17);
    fishUpperFin = new Mesh(17);
    fishLowerFin = new Mesh(17);
    fishTail = new Mesh(17);
    fishMouth = new Mesh(17);
    fishDefault
      .v(1,    0.1)    //Lower lip
      .v(0.96, 0)      //Mouth
      .v(1,    -0.1)   //Upper lip
      .v(0.6,  -0.28)
      .v(0.2,  -0.3) // Upper fin begin
      .v(0,    -0.35) // Upper fin top
      .v(-0.3, -0.5) // Upper fin top
      .v(-0.3, -0.15) // Upper fin end
      .v(-0.3, -0.2) // Tail begin
      .v(-0.35, -0.17) // Tail upper
      .v(-0.4,  0) // Tail middle
      .v(-0.35,  0.17) // Tail middle
      .v(-0.3,  0.2) // Tail end
      .v(-0.3,  0.15) // Lower fin begin
      .v(-0.3,  0.5) // Lower fin bottom
      .v(0.2,  0.3) // Lower fin end
      .v(0.6,  0.28); // Lower fin end

    fishUpperFin
      .v(0, 0)
      .v(0, 0)
      .v(0, 0)
      .v(0, 0)
      .v(0, 0)
      .v(-0.05, -0.4)
      .v(-0.03, -0.5)
      .v(0, 0)
      .v(0, 0)
      .v(0, 0)
      .v(0, 0)
      .v(0, 0)
      .v(0, 0)
      .v(0, 0)
      .v(0, 0)
      .v(0, 0)
      .v(0, 0);

    fishLowerFin
      .v(0, 0)
      .v(0, 0)
      .v(0, 0)
      .v(0, 0)
      .v(0, 0)
      .v(0, 0)
      .v(0, 0)
      .v(0, 0)
      .v(0, 0)
      .v(0, 0)
      .v(0, 0)
      .v(0, 0)
      .v(0, 0)
      .v(0, 0)
      .v(-0.05, 0.5)
      .v(0, 0)
      .v(0, 0);

    fishTail
      .v(0, 0)
      .v(0, 0)
      .v(0, 0)
      .v(0, 0)
      .v(0, 0)
      .v(0, 0)
      .v(0, 0)
      .v(0, 0)
      .v(-0.25, 0)
      .v(-0.65, -0.35)
      .v(-0.25, 0)
      .v(-0.65, 0.35)
      .v(-0.25, 0)
      .v(0, 0)
      .v(0, 0)
      .v(0, 0)
      .v(0, 0);

    fishMouth
      .v(0, 0.05)
      .v(-0.2, 0)
      .v(0, -0.05)
      .v(0, 0)
      .v(0, 0)
      .v(0, 0)
      .v(0, 0)
      .v(0, 0)
      .v(0, 0)
      .v(0, 0)
      .v(0, 0)
      .v(0, 0)
      .v(0, 0)
      .v(0, 0)
      .v(0, 0)
      .v(0, 0)
      .v(0, 0);

    seaStar = new Mesh(10);

    for (int i = 0; i < 10;) {
      seaStar.v(cos(-TWO_PI * i / 10.0), sin (-TWO_PI * i / 10.0));
      ++i;
      seaStar.v(cos(-TWO_PI * i / 10.0) * 0.3, sin (-TWO_PI * i / 10.0) * 0.3);
      ++i;
    }

    seaStarPulse = new Mesh(10);

    for (int i = 0; i < 10;) {
      seaStarPulse.v(0, 0);
      ++i;
      seaStarPulse.v(cos(-TWO_PI * i / 10.0) * 0.3, sin (-TWO_PI * i / 10.0) * 0.3);
      ++i;
    }

    squid = new Mesh(0);
    squid
      .v(1,    0) 
      .v(0.98, -0.02)
      .v(0.96, -0.015)
      .v(0.6,  -0.515)
      .v(0.15, -0.2)
      .v(0,    -0.8)
      .v(-0.95,-1)
      .v(-1,   -0.95)
      .v(-0.2,   -0.90)
      .v(-0.1,   -0.85)
      .v(-0.2,   -0.80)
      .v(-1,   -0.75)
      .v(-0.2,   -0.70)
      .v(-0.1,   -0.65)
      .v(-0.2,   -0.60)
      .v(-1,   -0.55);



    lastPulse = 0;
    f = new Fish();
    f.phase = 1;
    f.strokeColor = new Color(0,94,128);

    this.fishTexture = loadImage("ananas.jpg");
    this.seastarTexture = loadImage("seastar.jpg");

    f.fishTexture = this.fishTexture;
    f.seastarTexture = this.seastarTexture;

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
