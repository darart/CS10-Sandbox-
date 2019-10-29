//Global variable
int leftEyeX;
int leftEyeY;
int rightEyeX;
int eyeDiameter;
int rightEyeY;
int measleDiameter;
int nose1X;
int  nose1Y;
float nose2X;
float nose2Y;
float  nose3X;
float nose3Y;
int mouthLeftX;
int mouthLeftY;
int mouthRightX;
int mouthRightY;

void setup() {
size(600, 600);
//fullscreen();

 leftEyeX = width*1/4;
 leftEyeY = height*1/4;
 eyeDiameter = width*1/8;
 rightEyeX = width*3/4;
 rightEyeY = leftEyeY;
 nose1X = width*1/2;
 nose1Y = height*1/3;
 nose2X = width*3/4.3;
 nose2Y = height*3/4.3;
 nose3X = width*1.5/4;
 nose3Y = height*2.5/4;
 mouthLeftX = width*1/4;
 mouthLeftY = height*3/4;
 mouthRightX = width*3/4;
 mouthRightY = mouthLeftY;
 measleDiameter = width*1/50; //Value = 10

ellipse(width*1/2, height*1/2, width, height);// Face - Circle
ellipse(300, 300, 600,600);
ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
triangle(nose1X,nose1Y,nose2X,nose2Y,nose3X,nose3Y);
line(mouthLeftX, mouthLeftY, mouthRightX, mouthRightY);
}

void draw() {
  color pink = #D81CB6;
  fill(pink);
  noStroke() ; // outline of measles
ellipse (random (width), random (height), measleDiameter, measleDiameter);
fill(255); // default, gray scale
stroke(1); // default
ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
triangle(nose1X, nose1Y, nose2X, nose2Y, nose3X, nose3Y);
line(mouthLeftX, mouthLeftY, mouthRightX, mouthRightY);

}
