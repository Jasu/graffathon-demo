/* 
 * Code for starting a demo project
 *
 * Nothing extra except standard libraries
 * bundled with Processing 
 */

// Minim is needed for the music playback.
import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

// These control how big the opened window is.
// Before you release your demo, set these to 
// full HD resolution (1920x1080).
int CANVAS_WIDTH = 480;
int CANVAS_HEIGHT = 360;
float ASPECT_RATIO = (float)CANVAS_WIDTH/CANVAS_HEIGHT;
int currentEffect = 0;

Effect effects[];

// You can skip backwards/forwards in your demo by using the 
// arrow keys; this controls how many milliseconds you skip
// with one keypress.
int SONG_SKIP_MILLISECONDS = 2000;

// Needed for audio
Minim minim;
AudioPlayer song;


/*
 * Processing's setup method.
 *
 * Do all your one-time setup routines in here.
 */
void setup() {
  // Set up the drawing area size and renderer (P2D / P3D).
  size(CANVAS_WIDTH, CANVAS_HEIGHT, P2D);
  frameRate(60);

  effects = new Effect[2];
  effects[0] = new Ellipse();
  effects[1] = new Clear();

  minim = new Minim(this);
  song = minim.loadFile("../processing/common/tekno_127bpm.mp3");
  song.play();
}


/*
 * Processing's drawing method
 */
void draw() {
  float secs = millis() / 1000.0;
  effects[currentEffect].draw(secs);
}


void nextEffect() {
  currentEffect++;
  if (currentEffect >= effects.length) 
    currentEffect = 0;
}

void keyPressed() {
  if (key == CODED) {
    // Left/right arrow keys: seek song
    if (keyCode == LEFT) {
      song.skip(-SONG_SKIP_MILLISECONDS);
    } 
    else if (keyCode == RIGHT) {
      song.skip(SONG_SKIP_MILLISECONDS);
    }
  }
  else if (key == ' ') {
    nextEffect();
  }
  // Enter: spit out the current position
  // (for syncing)
  else if (key == ENTER) {
    print(song.position() + ", ");
  }
}
