
//Music Program
/*



/* sound Effets
Wood_Door_Open and 


*/


import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim;
AudioPlayer song1;
AudioPlayer song2;
AudioPlayer song3;
void setup(){
minim = new Minim(this);
//lod from data directory, loadFile should also load from project floder
song1 = minim.loadFile("Greedy.mp3");
song2 = minim.loadFile("");
song3 = minim. loadFile("");
}
void draw(){}

void keyPressed(){
if(key =='p'){
  if(song1. isPlaying()) {
  song1. pause();
}else if (song1.position() == song1. length()){
  song1.rewind();
  song1.play();
} else{
  song1.play();
}
  song1.play();
} if(key == 'h'){
  song2.play();
} if(key == 'a'){
  song3.play();
}
}
void mousePressed(){}
