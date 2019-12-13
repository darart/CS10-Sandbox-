
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
AudioMetaData songMetaData1;
AudioPlayer song2;
AudioPlayer song3;
int loopnum = 1;
void setup(){
minim = new Minim(this);
//lod from data directory, loadFile should also load from project floder
song1 = minim.loadFile("Greedy.mp3");
songMetaData1 = song1.getMetaData();
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
void mousePressed(){
}
