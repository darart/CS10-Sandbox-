// Global Variable
String title = "Quit!";
PFont quitButtonFont;
color purple = #C703FF;
color purpleQuitButton = #FFDBFB;
color yellowQuitButton = #FEFFDB;

void quitButtonRect(){
  rect (width*19/20, height*0, width*1/2, height*1/10); 
}

void quitButtonSetup() {
  quitButtonFont = createFont ("Harington", 55);//Must also Tools / create Font / Fi
  rect (width*19/20, height*0, width*1/2, height*1/10); 
 
  
}

void quitButtonDraw() {
  //HoverOver
  if (mouseX >=width*19/20, && mouseX <=width && mouseY >= height*) && mouseY <= height *10/20){
    fill (purpleQuitButton);
    rect (width*19/20, height*0, width*1/2, height*1/10);  
  { else fill (purpleQuitButton);
     rect (width*19/20, height*0, width*1/2, height*1/10); 
  }
  
  //Text in Quit Button
   fill(purple); // Ink, hexidecimal copied from color selector
textAlign (CENTER, CENTER); // Aling X&Y, se Processing. org/Reference
//Values: [LEFT | CENTER | RIGHT] & [ TOP | CENTER | BOTTOM | BASELINE]
textFont (quitButtonFont, 20);
text(title, width*19/20, height*0, width*10/20, height*1/20);
fill(255); //Rest to white for rest of the program
  
}

void quitButtonMouse() {
}
