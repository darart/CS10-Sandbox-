// Global Variables
Boolean draw = false;
int pencilDiameter = 10;

void setup(){
  size(500, 600);
  QuitButtonSetup();
}
void draw(){
  //background();
  //Drawing Code
  quitButtonDrw();
  if (draw = true) {
    ellipse ( mouseX, mouseY, pencilDiameter, pencilDiameter);
  }
}
void mousePressed(){

quitButtonMouseClicked();
 //Boolean to Activate Drawing  Code 
 if(draw = false){
   draw = true;}
  }
 void mouseReleased(){
   if (draw = true){
     draw = false; 
   }
 }
