//Golbal Variables
int  appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
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
  backgroundImageWidth = appWidth*0;
  backgroundImageHeight = appHeight*0;
  //
  //DIVs
  rect(backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
  //
} //End setup
//
void draw() {
  //image();
} //End setup
//
void mousePressed() {} //End setup
//
void keyPressed() {} //End setup
//
// End MAIN Program
