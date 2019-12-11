
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
int loopnum = 1;
void setup(){
minim = new Minim(this);
//lod from data directory, loadFile should also load from project floder
song1 = minim.loadFile("Greedy.mp3");
// instructions
println("start of console");
println("Click th canvas to finish starting this program");
println("press p to play and pause, will rewind when at the end");
println("press s to stop and rewind to the beginning");
println(" press l to loop the song");
song2 = minim.loadFile("");
song3 = minim. loadFile("");
}
void draw(){}

void keyPressed(){
 if ( key == 'p' || key == 'P' ) { //Caps lock can be on
    if ( song1.isPlaying() ) {
      song1.pause();
 } else if ( song1.position() == song1.length() ) {
      song1.rewind();
      song1.play();
 } else {
      song1.play();
  }
  }
  //
  if (key == 's' || key == 'S') {
    if ( song1.isPlaying() ) {
      song1.pause();
      song1.rewind();
    } else { //Song is not Playing
      song1.rewind();
    }
  }
  //
  if(key == 'l' || key == 'l') song1.loop(loopnum); // single line If
  // "l" Automatically loop the song, and starts playing
}
void mousePressed(){}
