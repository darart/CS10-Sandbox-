
// Global Variable
color circleRed = #FF0303, white=255, black=0, pink=#F218D6, orange=#DB7414, broun=#502802;
Boolean turnoYellow=false, turnOnpink=false, turnOnBrown=false;
float ptDiameter, rectwidth, rectheight;
float pt1X, pt1Y, pt2X, pt2Y, pt3X, pt3Y, pt4X, pt4Y;
float  pt5X, pt5Y, pt6X, pt6Y, pt7X, pt7Y, pt8X, pt8Y;
float pt13X, pt13Y, pt14X, pt14Y, pt15X, pt15Y,  pt16X, pt16Y;
float pt9X, pt9Y, pt10X,  pt10Y, pt11X, pt11Y, pt12X, pt12Y;
float  button1X, button1Y, button1width, button1height;
float button2X, button2Y, button2width, button2height;
float button3X, button3Y, button3width, button3height;
float button4X, button4Y, button4width, button4height;
void setup() {
  size(500, 500);
  ptDiameter = width *1/27.777777777;
  rectwidth = width*1/3;
  rectheight = height*1/3;
  //
  pt1X = pt5X = pt9X = pt13X = width*0;
  pt2X = pt6X = pt10X = pt14X = width*1/3;
  pt3X = pt7X = pt11X = pt15X = width*2/3;
  pt4X = pt8X = pt12X = pt16X = width*3/3;
  //
  pt1Y = pt2Y = pt3Y = pt4Y = height*0;
  pt5Y = pt6Y = pt7Y= pt8Y = height*1/3;
  pt9Y = pt10Y = pt11Y = pt12Y = height*2/3;
  pt13Y = pt14Y = pt15Y = pt16Y = height*3/3;
  //
    //Button to illstrate arithmetic
  button1X = width * 1/3 *2/3; //section 1, subsection 1
  button1Y = height * 1/3 *1/3; //section 1, subsection 1
  button1width = width * 1/3 * 1/3;
  button1height = height * 1/3 * 1/3;
  
  //Button to illstrate arithmetic
  button2X = width * 2/4 *2/4; //section 2, subsection 1: denominator is 3*2 numerator is counted
  button2Y = height * 2/4 *2/4; //section 2, subsection 0: denominator is 3*2, numertor is counted
  button2width = width * 1/3 * 1/2;
  button2height = height * 1/3 * 1/2;
  //
  //Button to illustrate arithmetic
  button3X = width * 11/15; // section 3, subsection 2: denominator is 3*5, numerator is counted 
  button3Y = height * 12/16; // section 3, subsection 4: denominator is 3*5, numerator is counted
  button3width = width * 2/5 * 1/5;
  button3height = height * 1/3 * 1/5;
  
  //last Button to Test Concept of Buttons
  button4X = width * 6/12;
  button4Y = height * 4/10;
  button4width = width*3/15;
  button4height = height*3/25;
}


void draw() {

  rect(pt1X, pt1Y, rectwidth, rectheight); 
  rect(pt2X, pt2Y, rectwidth, rectheight); 
  rect(pt3X, pt3Y, rectwidth, rectheight); 
  //
  rect(pt5X, pt5Y, rectwidth, rectheight); 
  rect(pt6X, pt6Y, rectwidth, rectheight); 
  rect(pt7X, pt7Y, rectwidth, rectheight);
  //
  rect(pt9X, pt9Y, rectwidth, rectheight); 
  rect(pt10X, pt10Y, rectwidth, rectheight); 
  rect(pt11X, pt11Y, rectwidth, rectheight);
  //
  rect(pt4X, pt4Y, rectwidth, rectheight);
  rect(pt8X, pt8Y, rectwidth, rectheight);
  rect(pt12X, pt12Y, rectwidth, rectheight);
  rect(pt16X, pt16Y, rectwidth, rectheight);
  //
  fill(pink);
   rect(button1X, button1Y, button1width, button1height);
   rect(button2X, button2Y, button2width, button2height);
   rect(button3X, button3Y, button3width, button3height);
   rect(button4X, button4Y, button4width, button4height);
   
   if (mouseX>= button1X && mouseX<=button1X+button1width && mouseY>button1Y && mouseY<=button1Y+button1height);
  fill(black);
  //
  ellipse(pt1X, pt1Y, ptDiameter, ptDiameter);
  ellipse(pt2X, pt2Y, ptDiameter, ptDiameter);
  ellipse(pt3X, pt3Y, ptDiameter, ptDiameter);
  ellipse(pt5X, pt5Y, ptDiameter, ptDiameter);
  ellipse(pt6X, pt6Y, ptDiameter, ptDiameter);
  ellipse(pt7X, pt7Y, ptDiameter, ptDiameter);
  ellipse(pt9X, pt9Y, ptDiameter, ptDiameter);
  ellipse(pt10X, pt10Y, ptDiameter, ptDiameter);
  ellipse(pt11X, pt11Y, ptDiameter, ptDiameter); 
  //
  
fill(circleRed);
  ellipse(pt4X, pt4Y, ptDiameter, ptDiameter);
  ellipse(pt8X, pt8Y, ptDiameter, ptDiameter);
  ellipse(pt12X, pt12Y, ptDiameter, ptDiameter); 
  fill(pink);
  ellipse(pt13X, pt13Y, ptDiameter, ptDiameter); 
  ellipse(pt14X, pt14Y, ptDiameter, ptDiameter);
  ellipse(pt15X, pt15Y, ptDiameter, ptDiameter);
  ellipse(pt16X, pt16Y, ptDiameter, ptDiameter); 
  fill(white);
}
  
  
 
void mousePressed() {
if ( mouseX>=button1X && mouseX<=button1X+button1width && mouseY>=button1Y && mouseY<=button1Y+button1height) {
    println("Btn 1 activated");
  }
  if ( mouseX>=button2X && mouseX<=button2X+button2width && mouseY>=button2Y && mouseY<=button2Y+button2height) {
    println("Btn 2 activated");
  }
  if ( mouseX>=button3X && mouseX<=button3X+button3width && mouseY>=button3Y && mouseY<=button3Y+button3height) {
    println("Btn 3 activated");
  }
  if ( mouseX>=button4X && mouseX<=button4X+button4width && mouseY>=button4Y && mouseY<=button4Y+button4height) {
    println("Btn 4 activated");
}
}
