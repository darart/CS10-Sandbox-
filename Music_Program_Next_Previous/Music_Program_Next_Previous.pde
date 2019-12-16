import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables 
Minim  minim;
int numberOfsong =3;
AudioPlayer[] song = new AudioPlayer[numberOfsong];
int currentSong = numberOfsong - numberOfsong;

void setup(){
minim = new Minim(this);
song[0] =minim.loadFile("");
song[1] =minim.loadFile("");
song[2] =minim.loadFile("");
song[3] =minim.loadFile("");
//
println("start of console");
println("Click th canvas to finish starting this program");
println("press p to play and pause, will rewind when at the end");
println("press s to stop and rewind to the beginning");
}
void draw(){

}
void mousePressed(){

}

void keyPressed(){
if (key == 'n' || key == 'N') { // Next-Back code
 if(song[currentSong]. is Playing(){
   song[currentSong].pause();
   song[currentSong].rewind();
   if (currentsong == numberOFsong - 1){
     currentSong = currentSong - numberOfsong;
     song[currenntSong].play();
   }else{
   currentSong = curretSong + 1;
   song[currentSong].play();
   }
 }else{
   currentSong = currentSong + 1;
   println(currentSong);
//
 if (key == 'b' || key == 'B') {} // Next-Back code
 if ( key == 'p' || key == 'P' ) {
 if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
 } else if ( song[currentSong].position() == song[currentSong].length() ) {
      song[currentSong].rewind();
      song[currentSong].play();
 } else {
      song[currentSong].play();
  }
  }
}
