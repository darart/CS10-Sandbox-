//Basic code to Add an Image

//Global Variables
PImage pic0;
PImage pic1;


void setup() {
   //Using Width and Height Key Varaibles, communciaiton to the display Geometry
  size (500,600);
  quitButtonSetup();
  pic0 = loadImage("butterfly.jpeg"); //Dimetensions: 259 width, 194 Height
  pic1 = loadImage("fall.jpeg"); //Dimensions: 0 Width, 529 Height
   //pic2 = loadImage("https://www.pexels.com/photo/close-up-of-leaf-326055/"); //Dimensions: 800 Width, 600 Height
  
  rect(width*1/4, height*0/16, width*0.518, height*0.32);//width is 259/ 500=0.
  image(pic0, width*1/4, height*0/6, width*0.518, height*0.32);
  
  rect(width*0, height*1/3,width*0.58139,width*0.58139);
   
  image(pic1, width*0, height*1/3,width*0.58139,width*0.58139);
   // for some reason, the 
}

void draw () {
  quitButtonDraw();
}

void mouseClicked() {
  quitButtonMouseClicked();
}
  
