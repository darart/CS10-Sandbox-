// Global Variable
color circleRed = #ff0303, white= #FAF5F9, pink= #DB1BB2;
float ptDiameter, rectwidth, rectheight;
float pt1X, pt1Y, pt2X, pt2Y, pt3X, pt3Y, pt4X, pt4Y;
float pt5X, pt5Y;
float pt9X, pt9Y;
float pt13X, pt13Y;
float pt14X, pt14Y;
float pt10X, pt10Y, pt11X, pt11Y, pt12X, pt12Y, pt17X, pt17Y;
float pt18X, pt18Y, pt19X, pt19Y; 
float pt20X, pt20Y, pt21X, pt21Y, pt22X, pt22Y, pt23X, pt23Y;
void setup() {
  size(500, 500);
  ptDiameter = width *1/27.777777777;
  pt1X = width*0;
  pt1Y = height*0;
  pt2X = width*1/3;
  pt2Y = pt1Y;
  pt3X = width*2/3;
  pt3Y = pt1Y;
  pt4X = width*3/3;
  pt4Y = pt1Y;
  pt5X = pt1X;
  pt9Y = height*1/3;
  pt13X = pt1X;
  pt13Y = height*2/3;
  pt14X = pt1X;
  pt14Y = height*3/3;
  pt10X = pt3X;
  pt10Y = height*2/3;
  pt11X = pt4X;
  pt11Y = height*3/3;
  pt12X = pt2X;
  pt12Y = height*3/3;
  pt17X = pt3X;
  pt17Y = height*3/3;
  pt18X = pt2X;
  pt18Y = height*2/3;
  pt19X = pt3X;
  pt19Y = height*2/3;
  pt20X = pt2X;
  pt20Y = height*1/3;
  pt21X = pt3X;
  pt21Y = height*1/3;
  pt22X = pt4X;
  pt22Y = height*1/3;
  pt23X = pt4X;
  pt23Y = height*2/3;
}
void draw() {
  
  rect(pt1X, pt1Y, ptDiameter, ptDiameter);
  rect(pt2X, pt2Y, ptDiameter, ptDiameter);
  rect(pt3X, pt3Y, ptDiameter, ptDiameter);
  rect(pt4X, pt4Y, ptDiameter, ptDiameter);
  //
  rect(pt5X, pt5Y, ptDiameter, ptDiameter);
  rect(pt21X, pt21Y, ptDiameter, ptDiameter);
   rect(pt22X, pt22Y, ptDiameter, ptDiameter); 
   rect(pt20X, pt20Y, ptDiameter, ptDiameter);
   //
  rect(pt9X, pt9Y, ptDiameter, ptDiameter);
  rect(pt13X, pt13Y, ptDiameter, ptDiameter);
  rect(pt14X, pt14Y, ptDiameter, ptDiameter);
  rect(pt10X, pt10Y, ptDiameter, ptDiameter);
  rect(pt11X, pt11Y, ptDiameter, ptDiameter);
  rect(pt12X, pt12Y, ptDiameter, ptDiameter); 
  rect(pt17X, pt17Y, ptDiameter, ptDiameter);
  rect(pt18X, pt18Y, ptDiameter, ptDiameter);
  rect(pt19X, pt19Y, ptDiameter, ptDiameter);
 
  rect(pt23X, pt23Y, ptDiameter, ptDiameter);
  fill(white);
  fill(circleRed);
  ellipse(pt1X, pt1Y, ptDiameter, ptDiameter);
  ellipse(pt2X, pt2Y, ptDiameter, ptDiameter);
  ellipse(pt3X, pt3Y, ptDiameter, ptDiameter);
  ellipse(pt4X, pt4Y, ptDiameter, ptDiameter);
  ellipse(pt5X, pt5Y, ptDiameter, ptDiameter);
  ellipse(pt9X, pt9Y, ptDiameter, ptDiameter);
  ellipse(pt13X, pt13Y, ptDiameter, ptDiameter);
  ellipse(pt14X, pt14Y, ptDiameter, ptDiameter);
  ellipse(pt10X, pt10Y, ptDiameter, ptDiameter);
  ellipse(pt11X, pt11Y, ptDiameter, ptDiameter);
  ellipse(pt12X, pt12Y, ptDiameter, ptDiameter); 
  ellipse(pt17X, pt17Y, ptDiameter, ptDiameter);
  fill(pink);
  ellipse(pt18X, pt18Y, ptDiameter, ptDiameter);
  ellipse(pt19X, pt19Y, ptDiameter, ptDiameter);
  ellipse(pt20X, pt20Y, ptDiameter, ptDiameter);
  ellipse(pt21X, pt21Y, ptDiameter, ptDiameter);
  ellipse(pt22X, pt22Y, ptDiameter, ptDiameter); 
  ellipse(pt23X, pt23Y, ptDiameter, ptDiameter);
  
}
  
  
 
void mousePressed() {
}
