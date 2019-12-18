import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables 
Minim  minim;
int numberOfsong =4;
int numberOfSoundEffects = 1;
AudioPlayer[] song = new AudioPlayer[numberOfsong];
AudioPlayer [] SoundEffect = new AudioPlayer [numberOfSoundEffects];
int currentSong = numberOfsong - numberOfsong;
int currentSoundEffects = numberOfSoundEffects - numberOfSoundEffects; // Zero strating
int loopNum = 1; //Able to connect this variabal


void setup(){
minim = new Minim(this);
song[0] =minim.loadFile("If_I_Had_a_Chicken.mp3");
song[1] =minim.loadFile("Seasons (1).mp3");
song[2] =minim.loadFile("Greedy.mp3");
song[3] =minim.loadFile("");
//
println("start of console");
println("Click th canvas to finish starting this program");
println("press p to play and pause");
}
void draw(){

}
void mousePressed(){

}

void keyPressed(){
if (key == 'n' || key == 'N') { // Next-Back code
 if (song[currentSong]. isPlaying() ){
   song[currentSong].pause();
   song[currentSong].rewind();
   if (currentSong == numberOfsong - 1){
     currentSong = currentSong - (numberOfsong -1);
   }else{
   currentSong = currentSong + 1;
   }
 
   println(currentSong);
    song[currentSong].play();
 }else{
   if (currentSong == numberOfsong - 1){
 currentSong = currentSong - (numberOfsong);
   }
 currentSong = currentSong +1;
}
}


 //if (key == 'b' || key == 'B') {} // Next-Back code
 
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
