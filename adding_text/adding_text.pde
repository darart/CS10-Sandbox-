// Adding Text
size (500,600);
String title = "Wahoo!";
PFont titleFont;
println ("Start of Console");
String[] fontList = PFont.list(); // Lists all fonts available on system
printArray(fontList); //For listing all possible fonts to choose, then createFont
titleFont = createFont ("harrington", 55);
color purple = #C703FF;

rect(width*1/4, height*0,width*1/2, height*1/10);
fill(purple);
textAling (CENTER, CENTER);
//Values: [LEFT | CENTER | RIGHT] & [ TOP | CENTER
textFont(titleFont,50);
text(title, width*1/4, height*0, width*1/2, height*1/10);
textFont (titleFont, 30);
text(title, width*1/4, height*0, width*1/2, height*1/10);
fill(255); //rest
