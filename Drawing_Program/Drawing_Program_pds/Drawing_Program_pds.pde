//Global Variable
color ink, black=#000000, white=255, blue=#0C05FA;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
float drawingDiameter;
Boolean draw=false;
float ptDiameter, rectWidth, rectHeight;
float pt1X, pt1Y, pt2X, pt2Y, pt3X, pt3Y, pt4X, pt4Y, pt5X, pt5Y;
float pt6X, pt6Y, pt7X, pt7Y, pt8X, pt8Y, pt9X, pt9Y, pt10X, pt10Y;

void setup(){ 
size(600, 600);
 drawingSurfaceX  = width*0;
 drawingSurfaceY = height*1/4;
 drawingSurfaceWidth = width*3/4;
 drawingSurfaceHeight = height*4/5;
rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
// 
ptDiameter = width*1/35;
rectWidth = width*1/5;
rectHeight = height*3/24;

pt1X = pt2X = width*0;
pt3X = pt4X = width*1/5;
pt5X = width*2/5;
pt6X = width*3/5;
pt7X =pt8X = pt9X = pt10X = width*5/6.3;

pt1Y = pt3Y = pt5Y = pt6Y = pt7Y = height*0;
pt2Y = pt4Y = pt8Y = height*1/8;
pt9Y = height*2/6;
pt10Y = height*3/4;
}
void draw() {
 rect(pt1X, pt1Y, rectWidth, rectHeight);
 rect(pt2X, pt2Y, rectWidth, rectHeight);
 rect(pt3X, pt3Y, rectWidth, rectHeight);
 rect(pt4X, pt4Y, rectWidth, rectHeight);
 rect(pt5X, pt5Y, rectWidth, rectHeight);
 rect(pt6X, pt6Y, rectWidth, rectHeight);
 rect(pt7X, pt7Y, rectWidth, rectHeight);
 fill(blue);
 rect(pt8X, pt8Y, rectWidth, rectHeight);
 fill(white); //reset default
 rect(pt9X, pt9Y, rectWidth, rectHeight);
 rect(pt10X, pt10Y, rectWidth, rectHeight);
 
  if ( true) {
    fill(blue);
    ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);
  }
}
void mousePressed() {
  if ( mouseX>drawingSurfaceX  && mouseX<drawingSurfaceX+drawingSurfaceWidth  && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
    println("drawing surface");
    if (draw == false) {
      draw = true;
    } else {
      draw = false;
    }
    ink = black; // example to change ink
    drawingDiameter = width*1/100;
  }
}
