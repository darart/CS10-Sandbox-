import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables 
Minim  minim;
int numberOfSongs = 4;
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
int currentSong = numberOfSongs - numberOfSongs;


void setup(){
minim = new Minim(this);
song[0] =minim.loadFile("If_I_Had_a_Chicken.mp3");
song[1] =minim.loadFile("Seasons (1).mp3");
song[2] =minim.loadFile("Greedy.mp3");
song[3] =minim.loadFile("Finding_Me.mp3");
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
   if (currentSong == numberOfSongs - 1){
     currentSong = currentSong - (numberOfSongs -1);
   }else{
   currentSong = currentSong + 1;
   }
 
   println(currentSong);
    song[currentSong].play();
 }else{
   if (currentSong == numberOfSongs - 1){
 currentSong = currentSong - (numberOfSongs);
   }
 currentSong = currentSong +1;
 println(currentSong);
}
}

 //
 if (key == 'b' || key == 'B') { // Next-Back code
 if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
   song[currentSong].rewind();
      if ( currentSong == numberOfSongs - numberOfSongs ) {
        currentSong = numberOfSongs - 1;
      } else {
        currentSong -= 1; // Equivalent code: currentSong = currentSong - 1
      }
      println(currentSong);
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - numberOfSongs ) {
        currentSong = numberOfSongs - 1;
      } else {
        currentSong -= 1;
      }
      println(currentSong);
    }
  } 
  //
  if (key == 'p' || key == 'P') {
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
