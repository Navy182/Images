 //Program Notes
 - Finish Nightmode: medium and difficult
 */
//Golbal Variables
int  appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage picBackground
Boolean nightmode=false; //Note: clock and turn on automatically
Boolean brightnessControl=false; //Note: ARROWS
int brightnessNumber=255; //Range:1-255
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
  //background(255); //built in BUG, 1 pixel
  rect(backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
  //
  if ( brightnessControl==true ) tint (255, brightnessNumber);
  { //Gray Scale: 1/2 tint (i.e 128/256=1/2)
  if ( brightnessNumber<1 ) {
    brightnessNumber=1;
  } else if ( brightnessNumber>255 ) {
    brightnessNumber=255;
  } else {
    //Empty ELSE
  }
   tint (255, brightnessNumber);
   println(brightnessNumber);
   //if ( nightmode==true ) tint ( 64, 64, 40 ); //Gray Scale: 1/2 tint (i.e 128/256=1/2)
  if ( nightmode==true ) {
    tint ( 64, 64, 40 );
    println(nightmode);
  } else {
    noTint(); //See Processing DOC
    println(nightmode);
  }
  image( picBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  //
} //End draw
//
void mousePressed() {} //End setup
//
void keyPressed() {} //End setup
  if ( key=='n' || key=='N' ) { //Nightmode, basic control is Boolean
    if ( nightmode==true ) {
      nightmode = false;
    } else {
      nightmode = true;
    }
  }
  //Brightness: ARROWS activate brightnessControl, never off
  //NOTE: Nightmode does turn off
  if ( [Special Key Bind] ) { //Brightness keybind
    brightnessControl = true;
    //CONTINUE HERE with brightness toggles
  }
    //
  } //End keyPressed
  //
// End MAIN Program
