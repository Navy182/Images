/* Program Notes //<>//
 - Finish Nightmode: medium and difficult
 */
//Golbal Variables
int  appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage picBackground, leavesForeground, blackflowersPortrait;
Boolean nightmode=false; //Note: clock will automatically turn on
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
  if ( hourNightMode>18 ) {
    nightmode=true;
  } else if ( hourNightMode<06 ) {
    nightmode=true;
  } else {
    nightmode=false;
  }
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  //Concatenation of Pathways
  String up = "..";
  String open = "/";
  String imagesPath = up + open;
  String landScapeImage = "pictures/Landscape & Sqaure Images/";
  picBackground = loadImage(imagesPath + landScapeImage + "fall-leaves-png-transparent-23.png/");
  leavesForground = loadImage();
  blackflowersPortrait = loadImage();
  //
  //DIVs
  //rect ( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  rect();
  rect();
  //
} //End setup
//
void draw() {
  //background(255); //built in BUG, 1 pixel
  //rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  //println(BrightnessControl, nightmode);
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
      tint ( 64, 64, 40 ); //Blue Light must be limited, i.e <40
      //println(nightmode);
    } else {
      noTint(); //See Processing DOC
      //println(nightmode);
    }
    image( picBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
    {
      //image( leavesForeground, ); //My image
      //image( blackflowersPortrait, ); //Portrait image
      //
    } //End draw
    //
    void keyPressed() {
      //
      if ( key=='n' || key=='N' ) {//Nightmode, basic control is Boolean
        if ( nightmode==true ) {
          nightmode = false;
        } else {
          nightmode = true;
        }
      }
      //Brightness: ARROWS activate brightnessControl, never off
      //NOTE: Nightmode does turn off
      if ( key==CODED && keyCode==UP || keyCode==DOWN ) { //brightness keybind
        brightnessControl = true;
        if ( key==CODED && keyCode==UP ) brightnessNumber++ ; //brightnessNumber+=1 //brightnessNumber = brightnessNumber
        if ( key==CODED && keyCode==DOWN ) brightnessNumber-- ;
        //CONTINUE HERE with brightness toggles
      }
      println(brightnessNumber);
    } //End keyPressed
    //
    void mousePressed() {
    } // End MousePressed

    // End MAIN Program
