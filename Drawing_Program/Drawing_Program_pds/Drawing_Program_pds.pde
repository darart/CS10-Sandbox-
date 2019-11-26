//Global Variable
color  orange = #B7720B, white = #FFFFFF, blue= #6CBAE3;

float ptDiameter, rectwidth, rectheight;
float pt1X, pt1Y, pt2X, pt2Y;
float pt3X, pt3Y, pt4X, pt4Y;
float pt5X, pt5Y, pt6X, pt6Y, pt7X, pt7Y, pt8X, pt8Y;
void setup(){ 
  size(600, 500);
  ptDiameter = width *1/30;
  rectwidth = width*2/3;
  rectheight = height*2/3;
  //
  pt1X = pt3X = width*0; 
  //
  pt1Y = pt2Y = height*2/3;
  pt3Y = pt4Y = height*3/3;
  //
  pt5X = pt7X = width*0;
  //
  pt5Y = pt6Y = height*1/3;
  pt7Y = pt8Y = height*3/3;
  
  
  
  
}
void draw(){
  
  fill(blue);
  rect(pt1X, pt1Y, rectwidth, rectheight); 
  rect(pt2X, pt2Y, rectwidth, rectheight); 
  fill(blue);
  rect(pt3X, pt3Y, rectwidth, rectheight);
  rect(pt4X, pt4Y, rectwidth, rectheight);
 
 //
 fill(white);
  rect(pt5X, pt5Y, rectwidth, rectheight);
  rect(pt6X, pt6Y, rectwidth, rectheight);
  rect(pt7X, pt7Y, rectwidth, rectheight);
  rect(pt8X, pt8Y, rectwidth, rectheight);

  
  fill(orange);
  //
  ellipse(pt1X, pt1Y, ptDiameter, ptDiameter);
  ellipse(pt2X, pt2Y, ptDiameter, ptDiameter);
  ellipse(pt3X, pt3Y, ptDiameter, ptDiameter);
  ellipse(pt4X, pt4Y, ptDiameter, ptDiameter);
  fill(blue);
  ellipse(pt5X, pt5Y, ptDiameter, ptDiameter);
  ellipse(pt6X, pt6Y, ptDiameter, ptDiameter);
  ellipse(pt7X, pt7Y, ptDiameter, ptDiameter);
  ellipse(pt8X, pt8Y, ptDiameter, ptDiameter);
  fill(white);
}
void mousePressed(){
}
