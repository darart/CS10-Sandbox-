// Global Variable
String title = "Quit!";
PFont quitButtonFont;
color purple = #C703FF;
void quitButtonSetup() {
  quitButtonFont = createFont ("Harington", 55);//Must also Tools / create Font / Fi
  rect (width*19/20, height*0, width*1/2, height*1/10); 
 
  
}

void quitButtonDraw() {
  //Text in Quit Button
   fill(purple); // Ink, hexidecimal copied from color selector
textAlign (CENTER, CENTER); // Aling X&Y, se Processing. org/Reference
//Values: [LEFT | CENTER | RIGHT] & [ TOP | CENTER | BOTTOM | BASELINE]
textFont (quitButtonFont, 50);
text(title, width*1/4, height*0, width*1/2, height*1/10);
fill(255); //Rest to white for rest of the program
  
}

void quitButtonMouse() {
}
