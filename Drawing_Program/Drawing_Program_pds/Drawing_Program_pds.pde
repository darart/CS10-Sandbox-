//Global Variable
color  orange = #B7720B, white = #FFFFFF, blue= #6CBAE3, green= #05430A;
Boolean turnOngreen = true, turnOnblue=true;
float ptDiameter, rectwidth, rectheight;
float pt1X, pt1Y, pt2X, pt2Y;
float pt3X, pt3Y, pt4X, pt4Y;
float pt5X, pt5Y, pt6X, pt6Y, pt7X, pt7Y, pt8X, pt8Y;
float button1X, button1Y, button1width, button1height;
float button2X, button2Y, button2width, button2height;
float button3X, button3Y, button3width, button3height;
float button4X, button4Y, button4width, button4height;
float button5X, button5Y, button5width, button5height;
float button6X, button6Y, button6width, button6height;


void setup(){ 
  size(600, 500);
  ptDiameter = width *1/30;
  rectwidth = width*2.4/3;
  rectheight = height*2.5/3;
  //
//  
  pt1Y = pt2Y = height*2.5/3;
  pt3Y = pt4Y = height*2.5/3;

  //
  pt5X = pt7X = width*0;
  //
  pt5Y = pt6Y = height*0.8/3;
  pt7Y = pt8Y = height*1.9/3;
//
//button to illstrate arithmetic
 button1width = width*1/30;
 button1height = height*1/27;
 button1X = width *1/40;
 button1Y = height*130;

  
  
  
}
void draw(){
  rect(pt1X, pt1Y, rectwidth, rectheight); 
  rect(pt2X, pt2Y, rectwidth, rectheight);
  rect(pt3X, pt3Y, rectwidth, rectheight);
  rect(pt4X, pt4Y, rectwidth, rectheight);
 //
 
  rect(pt5X, pt5Y, rectwidth, rectheight);
  rect(pt6X, pt6Y, rectwidth, rectheight);
  rect(pt7X, pt7Y, rectwidth, rectheight);
  rect(pt8X, pt8Y, rectwidth, rectheight);
  //
  fill(green);
  rect(button1X, button1Y, button1width, button1height);
   rect(button2X, button2Y, button2width, button2height);
   rect(button3X, button3Y, button3width, button3height);
   rect(button4X, button4Y, button4width, button4height);
   //
   rect(button5X, button5Y, button5width, button5height);
   rect(button6X, button6Y, button6width, button6height);
   //
  fill(orange);
  ellipse(pt1X, pt1Y, ptDiameter, ptDiameter);
  ellipse(pt2X, pt2Y, ptDiameter, ptDiameter);
  ellipse(pt3X, pt3Y, ptDiameter, ptDiameter);
  ellipse(pt4X, pt4Y, ptDiameter, ptDiameter);
  ellipse(pt5X, pt5Y, ptDiameter, ptDiameter);
  ellipse(pt6X, pt6Y, ptDiameter, ptDiameter);
  ellipse(pt7X, pt7Y, ptDiameter, ptDiameter);
  ellipse(pt8X, pt8Y, ptDiameter, ptDiameter);
}

void Keypressed(){
  println("pressed" + int(key) + " Paste" + keyCode);
}

void mousePressed(){
}
