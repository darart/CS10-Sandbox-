//Basic code to Add an Image

//Global Variables
PImage pic0;
PImage pic1;


void setup() {
  size (500,600);
  quitButtonSetup();
  pic0 = loadImage("pexels-photo-326055.jpeg"); //Dimetensions: width
  pic1 = loadImage("fall.jpeg"); //Dimensions: width 860 px, height 529 px
  
  rect(width*1/4, height*0/16, width*0.518, height*0.32333333);//width is 259/ 500=0.
  image(pic0, width*1/4, height*0/6, width*0.518, height*0.3233333);
  
  rect(width*0, height*1/3,width*0.613,width*0.613); //Aspect Ratio 529/860=0.613
  image(pic1, width*0, height*1/3,width*0.613,width*0.613);
}
