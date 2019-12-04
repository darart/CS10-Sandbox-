//Global Variable
color ink, black=#000000;

float ptDiameter, rectwidth, rectheight;
float ptX, ptY;
Boolean draw=false;

void setup(){ 

  size(600, 500);

  ptDiameter = width *0.4/30;
  rectwidth = width*2.4/3;
  rectheight = height*2.5/3;
  //
  ptX = width*0;
  ptY  = height*0/3;
//

  
  
  
}
void draw(){
  

  rect(ptX, ptY, rectwidth, rectheight); 

  ellipse(ptX, ptY, ptDiameter, ptDiameter);
   if (draw == true) {
    fill(ink);
    
  }
}

void mousePressed(){

    println("drawing surface");
    if (draw == false) {
      draw = true;
    } else {
      draw = false;
    }
    ink = black; // example to change ink

}
