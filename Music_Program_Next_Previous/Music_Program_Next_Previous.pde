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
color black=#2E2525;
color pink=#B74EB5;
color white=#FFFFFF;
color blue=#140EE8;
color lightblue=#67C0FA;
 float nose1X, nose1Y, nose2X, nose2Y, nose3X, nose3Y;
boolean play;

void setup(){
size(400,400);
 background(black);

 minim = new Minim(this);
song[0] =minim.loadFile("If_I_Had_a_Chicken.mp3");
song[1] =minim.loadFile("Seasons (1).mp3");
song[2] =minim.loadFile("Greedy.mp3");
song[3] =minim.loadFile("Finding_Me.mp3");
//
println("start of console");
println("Click th canvas to finish starting this program");
println("press p to play and pause");
  
 //Using WIDTH and HEIGHT Key Varaibles, communciaiton to the display Geometry
  //String[] fontList = PFont.list(); //To list all fonts available on system
  println("Start of Console");
  //printArray(fontList); //For listing all possible fonts to choose, then createFont
  titleFont = createFont ("Harrington", 55); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
 
 quitButtonSetup();
 nose1X = width*1/5;
 nose1Y = height*1.3/2;
 nose2X = width*1.5/5;
 nose2Y =height*6/8;
 nose3X = width*1.8/4;
 nose3Y = height*2/4;

}
void draw(){

  quitButtonDraw();

  fill(white);
  noStroke();
  rect(25, 25, 350, 350, 80);

  fill(black);
  triangle(nose1X, nose1Y, nose2X, nose2Y, nose3X, nose3Y);
  rect( 235, 180, 15, 45, 7);
  rect( 210, 180, 15, 45, 7);

  triangle(152, 283, 152, 307, 137, 297);
  triangle(137, 283, 137, 307, 122, 296);
  rect( 115, 283, 5, 25, 6);

  triangle(345, 283, 345, 307, 363, 296);
  triangle(363, 283, 363, 307, 378, 296);
  rect( 378, 283, 5, 25, 6);
  

 
  println ("Mousex:", mouseX, "\tMouseY:", mouseY);

  if (play)
    song[currentSong].play();
  else
    song[currentSong].pause();

  for (int i = 0; i < song[currentSong].bufferSize() - 1; i++)
  {
  }
  float posx = map(song[currentSong].position(), 115, song[currentSong].length(), 115, 385);
  ellipse(posx, 112, 20, 20);


}
void mousePressed(){
  quitButtonMouseClicked();

  if ( mouseX > 210 && mouseX < 210 + 85 &&
    mouseY > 265 && mouseY < 265 + 85) {
    play = !play;
  }

  if ( mouseX > 340 && mouseX < 340 + 50 &&
    mouseY > 276 && mouseY < 276 + 40) {
    if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - 1 ) {
        currentSong = numberOfSongs - numberOfSongs;
      } else {
        currentSong = currentSong + 1;
      }
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - 1 ) {
        currentSong = numberOfSongs - numberOfSongs;
      } else {
        currentSong = currentSong + 1;
      }
    }
  }

  if ( mouseX > 109 && mouseX < 109 + 50 &&
    mouseY > 275 && mouseY < 275 + 40) {
    if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - numberOfSongs ) {
        currentSong = numberOfSongs - 1;
      } else {
        currentSong -= 1; // Equivalent code: currentSong = currentSong + 1
      }
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - numberOfSongs ) {
        currentSong = numberOfSongs - 1;
      } else {
        currentSong -= 1; // Equivalent code: currentSong = currentSong + 
      }
    }
    if ( mouseX > 109 && mouseX < 109 + 50 &&
      mouseY > 275 && mouseY < 275 + 40) {
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
}


void keyPressed(){

  if (mouseX> 340 && mouseX < 340 + 50 &&
    mouseY > 276 && mouseY < 276 + 40 ) { // Next-Back code
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
