//Global Variable
color ink, black=#000000, white=255;
int ptDiameter, rectWidth, rectHeight;
float pt1X, pt1Y, pt2X, pt2Y, pt3X, pt3Y,  pt4X, pt4Y, pt5X, pt5Y;
float pt6X, pt6Y, pt7X, pt7Y, pt8X, pt8Y, pt9X, pt9Y, pt10X, pt10Y, pt11X, pt11Y;

void setup(){ 
size(600, 600);
 ptDiameter = width*1/300;
 rectWidth = width*1/6;
 rectHeight = height*1/8;
 //
 pt1X = pt2X = width*0;
 pt3X = pt4X = width*1/6;
 
 pt5X = width*2/6;
 pt6X = width*3/6;
 pt7X = width*4/6;
 pt8X = pt9X = pt10X = width*5/6;
 //
 pt1Y = pt3Y = pt5Y = pt6Y = pt7Y = pt8Y = height*0;
 pt2Y = pt4Y = pt9Y = height*1/8;

}
void draw() {
rect(pt1X, pt1Y, rectWidth, rectHeight);
rect(pt2X, pt2Y, rectWidth, rectHeight);
rect(pt3X, pt3Y, rectWidth, rectHeight);
rect(pt4X, pt4Y, rectWidth, rectHeight);
rect(pt5X, pt5Y, rectWidth, rectHeight);
rect(pt6X, pt6Y, rectWidth, rectHeight);
rect(pt7X, pt7Y, rectWidth, rectHeight);
rect(pt8X, pt8Y, rectWidth, rectHeight);
rect(pt9X, pt9Y, rectWidth, rectHeight);
rect(pt10X, pt10Y, rectWidth, rectHeight);
rect(pt11X, pt11Y, rectWidth, rectHeight);
// 
fill(white);



}

void mousePressed(){
   if (mouseButton == LEFT) {
    fill(0);
  } else if (mouseButton == RIGHT) {
    fill(255);
  } else {
    fill(126);
  }

  
}
