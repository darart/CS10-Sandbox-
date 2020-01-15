import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables 
color black=#2E2525;
color pink=#B74EB5;
color white=#FFFFFF;
color blue=#140EE8;
color lightblue=#67C0FA;

Minim  minim;
int numberOfSongs = 4;
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
int currentSong = numberOfSongs - numberOfSongs;

boolean play;
float  button1X, button1Y, button1width, button1height;
float button2X, button2Y, button2width, button2height;
float button3X, button3Y, button3width, button3height;
float button4X, button4Y, button4width, button4height;
void setup(){
size(400,400);
 background(lightblue);

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
  //Button to illstrate arithmetic
  button1X = width * 1/8;
  button1Y = height * 0.95/2;
  button1width = width * 9/80;
  button1height = height * 7/80;
  
  //Button to illstrate arithmetic
  button2X = width * 2.4/6;
  button2Y = height * 1.81/4;
  button2width = width * 1.2/12;
  button2height = height * 1.4/12;
  //
  //Button to illustrate arithmetic
  button3X = width * 3.2/6;  
  button3Y = height * 1.81/4; 
  button3width = width * 1.2/12;
  button3height = height * 1.4/12;

  
}
void draw(){

  quitButtonDraw();
  
  
  fill(white);
  noStroke();
  rect(25, 25, 350, 350, 80);

  fill(black);
  triangle(160, 180, 160, 230, 198, 208);
  rect( 235, 180, 15, 45, 7);
  rect( 210, 180, 15, 45, 7);

  triangle(90, 194, 90, 218, 70, 208);
  triangle(70, 194, 70, 218, 55, 208);
  rect( 50, 194, 5, 25, 6);

  triangle(310, 194, 310, 218, 330, 208);
  triangle(330, 194, 330, 218, 350, 208);
  rect( 350, 194, 5, 25, 6);

 fill(pink);
   rect(button1X, button1Y, button1width, button1height);
   rect(button2X, button2Y, button2width, button2height);
   rect(button3X, button3Y, button3width, button3height);
   rect(button4X, button4Y, button4width, button4height);

   if ( mouseX>=button1X && mouseX<=button1X+button1width && mouseY>=button1Y && mouseY<=button1Y+button1height) {
   }
   if ( mouseX>=button2X && mouseX<=button2X+button2width && mouseY>=button2Y && mouseY<=button2Y+button2height) {
   }
  if ( mouseX>=button3X && mouseX<=button3X+button3width && mouseY>=button3Y && mouseY<=button3Y+button3height) {
  }
  
}
void mouseClicked(){
    quitButtonMouseClicked();
 if ( mouseX>=button1X && mouseX<=button1X+button1width && mouseY>=button1Y && mouseY<=button1Y+button1height) { // Next-Back code
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
  if ( mouseX>=button2X && mouseX<=button2X+button2width && mouseY>=button2Y && mouseY<=button2Y+button2height) {
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
void keyPressed(){
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
  //
   if (key == 'n' || key == 'N') { //Next-Back Code
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - 1) {
        currentSong = currentSong - (numberOfSongs-1);
      } else {
        currentSong = currentSong + 1;
      }
      println(currentSong);
      song[currentSong].play();
    } else {
      if ( currentSong == numberOfSongs - 1) {
        currentSong = currentSong - (numberOfSongs);
      }
      currentSong = currentSong + 1;
      println(currentSong);
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
}
