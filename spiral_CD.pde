import ddf.minim.*;
AudioSample player;
AudioPlayer soundtrack;
Minim minim;

float r = 50;
float a = 0;
float d = 50;

void setup(){
     minim = new Minim(this);
  //load a file, give the AudioPlayer buffers that are 2048 samples long
  soundtrack = minim.loadFile("play.mp3");
  soundtrack.play();
  
  size(700,700);
  background(200);
  smooth();
  stroke(10,4);
  strokeWeight(350);
}

void draw(){
  fill(random(0,1),4);
  float x = width/2 + r * cos(a);
  float y = height/2 +  r * sin(a);
  ellipse( x,  y, d, d);
  a +=  10;
  r += 0.01;
  d -= 0.05;
}
