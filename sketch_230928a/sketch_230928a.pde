//Golbal Variables
int  appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage picBackground
//
void setup() {
  //fullScreen(); //displayWidth, displayHeight
  size( 500, 100 ); //Landscape
  //Copy display Orientation
  appWidth = width;
  appHeight = height;
  //
  // Population
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  picBackground = loadImage("../images/Landscapes/fall-leaves-png-transparent-23.png/");
  //
  //DIVs
  rect(backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
  //
} //End setup
//
void draw() {
  image( picBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
} //End setup
//
void mousePressed() {} //End setup
//
void keyPressed() {} //End setup
//
// End MAIN Program
