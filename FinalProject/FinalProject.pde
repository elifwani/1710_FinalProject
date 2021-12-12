//With the help of Processing Reference and The Coding Train
import processing.sound.*;

import ddf.minim.*;
import g4p_controls.*;

Minim minim;
Sound s;

//AudioPlayer percussion1;
//AudioPlayer greek1;
//AudioPlayer technobeat1;
//AudioPlayer acid1;
//AudioPlayer drumbeats1;
//AudioPlayer cokeloop1;

SoundFile technobeat;
SoundFile greek;
SoundFile percussion;
SoundFile acid;
SoundFile drumbeats;
SoundFile cokeloop;

FFT fft;
int bands = 512;
float[] spectrum = new float[bands];

float w = width / 32;

void setup() {
  size(720, 480, JAVA2D);
  background(255);
  createGUI();
  

  minim = new Minim(this);

  //percussion1 = minim.loadFile("percussion.mp3", 512);
  //greek1 = minim.loadFile("greek.mp3", 512);
  //technobeat1 = minim.loadFile("technobeat.mp3", 512);
  //acid1 = minim.loadFile("acid.mp3", 512);
  //drumbeats1 = minim.loadFile("drumbeats.mp3", 512);
  //cokeloop1 = minim.loadFile("cokeloop.mp3", 512);

  technobeat = new SoundFile(this, "technobeat.mp3");
  acid = new SoundFile(this, "acid.mp3");
  drumbeats = new SoundFile(this, "drumbeats.mp3");
  cokeloop = new SoundFile(this, "cokeloop.mp3");
  greek = new SoundFile(this, "greek.wav");
  percussion = new SoundFile(this, "percussion.wav");

  fft = new FFT(this, bands);
  fft.input(technobeat);
  //fft.input(greek);
  //fft.input(percussion);
  //fft.input(acid);
  //fft.input(drumbeats);
  //fft.input(cokeloop);
  
  //s = new Sound(this);
}

void draw() {
  background(0);

  fft.analyze(spectrum);

  for (int i = 0; i < bands; i++) {
    noStroke();
    fill(random(255), random(255), random(255));
    rect(i * w, height - spectrum[i]*height*5, w, height - (height - spectrum[i]*height*5));
  }
  
  //s.volume(0);
}


void percussion() {
  if (percussion.isPlaying()) {
    percussion.pause();
  } else {
    percussion.play();
    percussion.loop();
  }
}

void greek() {
  if (greek.isPlaying()) {
    greek.pause();
  } else {
    greek.play();
    greek.loop();
  }
}

void technobeat() {
  if (technobeat.isPlaying()) {
    technobeat.pause();
  } else {
    technobeat.play();
    technobeat.loop();
  }
}

void acid() {
  if (acid.isPlaying()) {
    acid.pause();
  } else {
    acid.play();
    acid.loop();
  }
}

void drumbeats() {
  if (drumbeats.isPlaying()) {
    drumbeats.pause();
  } else {
    drumbeats.play();
    drumbeats.loop();
  }
}

void cokeloop() {
  if (cokeloop.isPlaying()) {
    cokeloop.pause();
  } else {
    cokeloop.play();
    cokeloop.loop();
  }
}
