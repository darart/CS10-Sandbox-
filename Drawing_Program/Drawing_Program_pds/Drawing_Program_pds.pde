//Global Variable
color  orange = #B7720B, white = #FFFFFF, blue= #6CBAE3, green= #05430A;
Boolean turnOngreen = true, turnOnblue=true;
float ptDiameter, rectwidth, rectheight;
float pt1X, pt1Y, pt2X, pt2Y;

float button1X, button1Y, button1width, button1height;
float button2X, button2Y, button2width, button2height;


void setup(){ 
  frameRate(15);
  size(600, 500);
  ptDiameter = width *0.4/30;
  rectwidth = width*3/3;
  rectheight = height*3/3;
  //
  pt1X = width*0;
  pt1Y  = height*0/3;
  //
  pt2X = width*0;
  //
  pt2Y = height*1.7/3;

//
//button to illstrate arithmetic
 button1width = width*1/30;
 button1height = height*1/27;
 button1X = width *1/40;
 button1Y = height*130;

  
  
  
}
void draw(){
  line(0, 0, width, height);
  println(frameCount);
  fill(blue);
  rect(pt1X, pt1Y, rectwidth, rectheight); 
  fill(green);
  rect(pt2X, pt2Y, rectwidth, rectheight);

  //
 
  rect(button1X, button1Y, button1width, button1height);
   rect(button2X, button2Y, button2width, button2height);

 fill(orange);
  ellipse(pt1X, pt1Y, ptDiameter, ptDiameter);
  ellipse(pt2X, pt2Y, ptDiameter, ptDiameter);
  
  ellipse(50, 50, 200, 200);
}

void mousePressed(){
}
