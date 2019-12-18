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
int numberOfSoundEffects = 1;
int numberOfsongs =4;
AudioPlayer[] song = new AudioPlayer[numberOfsongs];
AudioPlayer [] SoundEffect = new AudioPlayer [numberOfSoundEffects];
int currentSong = numberOfsongs - numberOfsongs; // Zero starting index
int currentSoundEffects = numberOfSoundEffects - numberOfSoundEffects; // Zero strating index
AudioMetaData songMetaData1; // need to be an array
int loopnum = 1;// able to connect this variable to buttons, increasing the loop number
void setup(){
minim = new Minim(this);
//lod from data directory, loadFile should also load from project floder
song[0] =minim.loadFile("If_I_Had_a_Chicken.mp3");
song[1] =minim.loadFile("Seasons (1).mp3");
song[2] =minim.loadFile("Greedy.mp3");
song[3] =minim.loadFile("");
songMetaData1 = song[0].getMetaData();
//
SoundEffect[0] = minim.loadFile("Finding_Me.mp3");

// instructions
println("start of console");
println("Click th canvas to finish starting this program");
println("press p to play and pause, will rewind when at the end");
println("press s to stop and rewind to the beginning");
println(" press l to loop the song");

//verifying MetaData
println("file name: ",songMetaData1.fileName());
println("length(in milliseconds):",songMetaData1.length());
println("length(in seconds):",songMetaData1.length()/1000);
println("Title:",songMetaData1.title());
println("Author:",songMetaData1.author());//song Writer or performer
println("CompoSer:",songMetaData1.composer());//song Writer
println("Orchestra:",songMetaData1.orchestra());
println("Disk:",songMetaData1.disc());
println("Album:",songMetaData1.album());
println("Date Released:",songMetaData1.date());
println("Comment:",songMetaData1.comment());
println("Lyrics:",songMetaData1.lyrics());
println("Track:",songMetaData1.track());
println("Genre:",songMetaData1.genre());
println("Copyright:",songMetaData1.copyright());
println("Publisher:",songMetaData1.publisher());
println("Encoded:",songMetaData1.encoded()); //how a computer reads the file
  size(512, 200, P3D);
  
  // we pass this to Minim so that it can load files from the data directory
  minim = new Minim(this);
  
  // loadFile will look in all the same places as loadImage does.
  // this means you can find files that are in the data folder and the 
  // sketch folder. you can also pass an absolute path, or a URL.
  song1 = minim.loadFile("Greedy.mp3");
}
void draw(){
 }

void keyPressed(){
 if ( key == 'p' || key == 'P' ) { //Caps lock can be on
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
 } else if ( song[currentSong].position() == song[currentSong].length() ) {
      song[currentSong].rewind();
      song[currentSong].play();
 } else {
      song[currentSong].play();
  }
  }
  //
  if (key == 's' || key == 'S') {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
    } else { //Song is not Playing
      song[currentSong].rewind();
    }
  }
  //
  if(key == 'l' || key == 'l') song[currentSong].loop(loopnum); // single line If
  // "l" Automatically loop the song, and starts playing
 if ( key == 'f' || key == 'F') song[currentSong].skip(1000); // skip forward 1 second (1000 milliseconds), single IF Line
  if ( key == 'r' || key == 'R') song[currentSong].skip(-1000); // skip backward 1 second (1000 milliseconds), single IF Line
  //
  // Debugging for 
  println( "\nSong Position: ", "\t\t\t\t", song[currentSong].position(), "milliseconds" );
  println( "Song Position:", (song[currentSong].position()/1000)/60, "minutes\t", (song[currentSong].position()/1000)-((song[currentSong].position()/1000)/60 * 60), "seconds" );
  //
  if (key == 'n' || key == 'N') { //Next-Back Code
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if ( currentSong == numberOfsongs - 1) {
        currentSong = currentSong - (numberOfsongs-1);
      } else {
        currentSong = currentSong + 1;
      }
      println(currentSong);
      song[currentSong].play();
    } else {
      if ( currentSong == numberOfsongs - 1) {
        currentSong = currentSong - (numberOfsongs);
      }
      currentSong = currentSong + 1;
      println(currentSong);
    }
  } 
  //
  if (key == 'b' || key == 'B') { //Next-Back Code
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if ( currentSong == numberOfsongs - numberOfsongs ) {
        currentSong = numberOfsongs - 1;
      } else {
        currentSong -= 1; // Equivalent code: currentSong = currentSong - 1
      }
      println(currentSong);
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      if ( currentSong == numberOfsongs - numberOfsongs ) {
        currentSong = numberOfsongs - 1;
      } else {
        currentSong -= 1;
      }
      println(currentSong);
    }
  } 
  //
}
void mousePressed(){}
