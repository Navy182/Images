/* Program Notes
 - Finish Nightmode: medium and difficult
 */
//Golbal Variables
int  appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage picBackground
Boolean nightmode=false; //Note: clock and turn on automatically
Boolean brightnessControl=false; //Note: ARROWS
int brightnessNumber=128; //Range:1-255
//
void setup() {
  //fullScreen(); //displayWidth, displayHeight
  size( 500, 100 ); //Landscape
  //Copy display Orientation
  appWidth = width;
  appHeight = height;
  //
  // Population
   int hourNightMode = hour(); //24-hour clock
  println(hourNightMode);
  if ( hourNightMode>17 ) {
    nightmode=true;
  } else if ( hourNightMode<05 ) {
    nightmode=true;
  } else {
    nightmode=false;
  }
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth*0;
  backgroundImageHeight = appHeight*0;
  String up = "..";
  String open = "/";
  String imagesPath = up + open;
  String landScapeImage = "pictures/Landscape & Sqaure Images/";
  picBackground = loadImage(imagesPath + landScapeImage + "fall-leaves-png-transparent-23.png/");
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
  if ( brightnessControl==true )
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
  }
   //if ( nightmode==true ) tint ( 64, 64, 40 ); //Gray Scale: 1/2 tint (i.e 128/256=1/2)
  if ( nightmode==true ) {
    tint ( 64, 64, 40 );
    println(nightmode);
  } else {
    noTint(); //See Processing DOC
    println(nightmode);
  }
  image( picBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
} //End draw
//
void keyPressed() {
  if ( key=='n' || key=='N' ) { //Nightmode, basic control is Boolean
    if ( nightmode==true ) {
      nightmode = false;
    } else {
      nightmode = true;
    }
  }
  //Brightness: ARROWS activate brightnessControl, never off
  //NOTE: Nightmode does turn off
  if ( key==CODED && keyCode==UP || keyCode==DOWN ) { //Brightness keybind
    brightnessControl = true;
  if ( key==CODED && keyCode==UP ) brightnessNumber++ ; //brightnessNumber+=1 //brightnessNumber = brightnessNumber
  if ( key==CODED && keyCode==DOWN ) brightnessNumber
   //CONTINUE HERE with brightness toggles
  }
   //
   println(brightnessNumber);
  } //End keyPressed
  //
void mousePressed() {
  //When mouse is pressed
  println("mouse X: ", mouseX, "Mouse Y: ", mouseY);
  //
  //xRect2, yRect2, widthRect2, heightRect2
  if (mouseX>xRectQuit && mouseX<xRectQuit+widthRectQuit && mouseY>yRectQuit && mouseY<yRectQuit+heightRectQuit) exit();
  //
} // End MousePressed
//
// End MAIN Program
