// Global Variable
color circleRed = #ff0303;
float ptDiameter;
float pt1X, pt1Y, pt2X, pt2Y, pt3X, pt3Y, pt4X, pt4Y;
float pt5X, pt5Y;
float pt9X, pt9Y;
float pt13X, pt13Y;
float pt14X, pt14Y;
float pt10X, pt10Y, pt11X, pt11Y, pt12X, pt12Y, pt17X, pt17Y;
void setup() {
  size(500, 600);
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
  pt14Y = width*3/3;
  pt10X = height*3/5;
  pt10Y = pt3Y;
  pt11X = height*4.5/5;
  pt11Y = pt10X;
}
void draw() {
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
}
void mousePressed() {
}
