// Global Variable

color purple = #FF03F3;
color yellow = #FFF703;
color regularButton = purple;
color hoverOverButton = yellow;
String title= "Quit";
PFont titleFont;


void QuitButtonSetup(){}

void quitButtonDrw(){
  //Text in Quit Button
  fill(purple); //Ink, copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: LEFT | CENTER | RIGHT & TOP | CENTER | BOTTOM | BASELINE
  textFont(titleFont, 15); //Change the number until it fits, largest font size
  text(title, width*15/16, height*0/16, width*1/16, height*1/16);
  fill(255); //Reset to white for rest of the program
}
void quitButtonMouseClicked(){}
