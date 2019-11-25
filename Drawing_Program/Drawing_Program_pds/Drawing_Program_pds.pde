//Global Variable
color  orange = #B7720B;

float ptDiameter, rectwidth, rectheight;
float pt1X, pt1Y, pt2X, pt2Y;
float pt3X, pt3Y, pt4X, pt4Y;

void setup(){ 
  size(600, 500);
  ptDiameter = 1/28;
  rectwidth = width*2/3;
  rectheight = height*2/3;
  //
  pt1X = pt3X = width*0;
  pt2X = pt4X = width*2/3;
  //
  pt1Y = pt3Y = height*0;
  pt2Y = pt4Y = height*2/3;
}
void draw(){
  
  fill(orange);
  //
  ellipse(pt1X, pt1Y, ptDiameter, ptDiameter);
  ellipse(pt2X, pt2Y, ptDiameter, ptDiameter);
  ellipse(pt3X, pt3Y, ptDiameter, ptDiameter);
  ellipse(pt4X, pt4Y, ptDiameter, ptDiameter);
}
void mousePressed(){
}
