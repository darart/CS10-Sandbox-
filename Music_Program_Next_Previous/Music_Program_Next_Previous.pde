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


}
void draw(){

  quitButtonDraw();
 fill(black);
  rect(27, 70, 450, 450, 50);
  fill(white);
  noStroke();
  rect(53, 95, 400, 400, 45);
  stroke(1);
  fill(pink);
  ellipse(250, 300, 350, 350);
  fill(pink);
  noStroke();
  ellipse(250, 300, 323, 323);
  ellipse(250, 300, 125, 125);
  stroke(1);
  fill(lightblue);
  noStroke();
  ellipse(250, 300, 225, 225);
  stroke(1);
  fill(blue);
  noStroke();
  ellipse(250, 300, 125, 125);
  stroke(1);

  fill(lightblue);
  //rect(109, 275, 50, 40);
  //rect(340, 276, 50, 40);
  //rect(210, 265, 85, 65);
  //rect(232, 422, 30, 30);
  //rect(232, 147, 30, 30);

  fill(black);
  triangle(215, 272, 215, 322, 244, 298);
  rect( 254, 272, 15, 50, 6);
  rect( 274, 272, 15, 50, 6);

  triangle(152, 283, 152, 307, 137, 296);
  triangle(137, 283, 137, 307, 122, 296);
  rect( 117, 283, 5, 25, 6);

  triangle(345, 283, 345, 307, 363, 296);
  triangle(363, 283, 363, 307, 378, 296);
  rect( 378, 283, 5, 25, 6);
  noStroke();
  rect( 245, 150, 5, 25, 6);
  rect( 235, 160, 25, 5, 6);
  stroke(1);

  rect( 235, 435, 25, 5, 6);
  
  fill(blue);
  rect(203, 325, 100, 100);
  
  fill(white);
  noStroke();
  ellipse(230, 420, 50, 10);
  ellipse(240, 420, 50, 10);
  ellipse(250, 420, 50, 10);
  ellipse(260, 420, 50, 10);
  ellipse(270, 420, 50, 10);
  ellipse(280, 420, 50, 10);
  ellipse(290, 420, 20, 10);
  stroke(1);
  
  fill(pink);
  noStroke();
  ellipse(250,357,30,30);
  rect(247.5, 370, 5, 30);
  stroke(1);
  line(235, 374, 247, 382);
  line(262, 374, 252, 382);
  line(240, 408, 247, 399);
  line(252, 399, 258 ,408); 
  
  fill(blue);
  rect(113, 110, 275, 5, 10);
  fill(lightblue);
  
  

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
