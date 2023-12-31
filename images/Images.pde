/* Program Notes //<>//
 - Finish Nightmode: medium and difficult
 */
//Golbal Variables
int  appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float leavesX, leavesY, leavesHeight, leavesWidth;
float leavesXRect, leavesYRect, leavesHeightRect, leavesWidthRect, flowerXRect, flowerYRect, flowerHeightRect, flowerWidthRect;
float flowerX, flowerY, flowerHeight, flowerWidth;
PImage picBackground, leavesForeground, flowerPortrait;
//Boolean nightmode=false; //Note: clock will automatically turn on
//Boolean brightnessControl=false; //Note: ARROWS
//int brightnessNumber=128; //Range:1-255
//
void setup() {
  //fullScreen(); //displayWidth, displayHeight
  size( 500, 100 ); //Landscape
  //Copy display Orientation
  appWidth = width;
  appHeight = height;
  //
  // Population
 // int hourNightMode = hour(); //24-hour clock
 // println(hourNightMode);
 // if ( hourNightMode>18 ) {
//    nightmode=true;
 // } else if ( hourNightMode<06 ) {
 //   nightmode=true;
 // } else {
  // nightmode=false;
 // }
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  leavesXRect = appWidth*1/14;
  leavesYRect = appHeight*1/8;
  leavesHeightRect = appHeight*2.25/7;
  leavesWidthRect = appWidth*1/4;
  flowerXRect = leavesX*5/8;
  flowerHeightRect = leavesHeight;
  flowerWidthRect = leavesWidth;
  //Aspect Ratio Change
  leavesHeight = 7561; //hardcode of image file
  leavesWidth = 2383; //from image file under properties .. details
  flowerHeight = 299;
  flowerWidth = 168;
  float aspectRatio = 0.0; //Local Variables
  float rectDimesionMemory = 0.0; //Assigned ZERO b/c IF;
  if( leavesWidth >= leavesHeight ) { //leaves Image if Landscape
  //Comparsion Verification
  aspectRatio = leavesWidth / leavesHeight; // smaller/larger=0 if int, use casting
  //Memory of smaller side
  leavesHeight = leavesHeightRect;
  leavesWidth = aspectRatio * leavesHeight;
  //if () {} //ERROR Catch if leavesheight > bikeheightRect
  println("LEAVES is Landscape");
  } else { //leaves image if portrait
  //Comparsion Verification
  println("LEAVES is Portrait");
  } //End IF
  
  if( flowerWidth > flowerHeight ) { //flower Image if landscapes
  //Comparsion Verification
  aspectRatio = flowerWidth / flowerHeight; // smaller/larger=0 if int, use casting
  //Memory of smaller side
  flowerHeight = flowerHeightRect;
  flowerWidth = aspectRatio * flowerHeight;
  println("FLOWER is Landscape");
  } else { //flower Image of portrait
  //Comparsion Verification
  println("FLOWER is Portrait");
  //Repeat Aspect Ratio
  }//End IF
  
  //Original Aspect Ratios of Images to Change
  //Compare side lengths to see which is bigger
  //"Compress" the biggest side into the rect()
  //Concatenation of Pathways
  String up = "..";
  String open = "/";
  String imagesPath = up + open;
  String landScapeImage = "pictures/Landscapes/";
  String portraitImage = "pictures/Portrait";
  String fallImage = "fall-leaves-png-transparent-23.png";
  String flowerImage = "download.jpg";
  picBackground = loadImage(imagesPath + landScapeImage + fallImage); //Concatenation
  leavesForeground = loadImage( imagesPath + landScapeImage + fallImage );
  //flowerPortrait = loadImage();
  //
  //DIVs
  //rect ( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  //rect ( leavesX, leavesY, leavesHeight, leavesWidth );
  //rect ( flowerX, flowerY, flowerHeight, flowerWidth );
} //End setup
//
void draw() {
  //background(255); //built in BUG, 1 pixel
  rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  //println(BrightnessControl, nightmode);
  //
  //if ( brightnessControl==true ) tint (255, brightnessNumber);
 // { //Gray Scale: 1/2 tint (i.e 128/256=1/2)
    //if ( brightnessNumber<1 ) {
    //  brightnessNumber=1;
   // } else if ( brightnessNumber>255 ) {
    //  brightnessNumber=255;
   // } else {
      //Empty ELSE
   // }
   // tint (255, brightnessNumber);
    //println(brightnessNumber);
    //if ( nightmode==true ) tint ( 64, 64, 40 ); //Gray Scale: 1/2 tint (i.e 128/256=1/2)
    //if ( nightmode==true ) {
      //tint ( 64, 64, 40 ); //Blue Light must be limited, i.e <40
      //println(nightmode);
  //  } else {
     // noTint(); //See Processing DOC
      //println(nightmode);
   // }
    image( picBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
    image( leavesForeground, leavesXRect, leavesYRect, leavesHeight, leavesWidth ); //My image
    image( flowerPortrait, flowerXRect, flowerYRect, flowerHeight, flowerWidth ); //Portrait image
  //
} //End draw
//
void keyPressed() {
  //
  //if ( key=='n' || key=='N' ) {//Nightmode, basic control is Boolean
   // if ( nightmode==true ) {
    //  nightmode = false;
   // } else {
     // nightmode = true;
   // }
//  }
  //Brightness: ARROWS activate brightnessControl, never off
  //NOTE: Nightmode does turn off
 // if ( key==CODED && keyCode==UP || keyCode==DOWN ) { //brightness keybind
   // brightnessControl = true;
   // if ( key==CODED && keyCode==UP ) brightnessNumber++ ; //brightnessNumber+=1 //brightnessNumber = brightnessNumber
   // if ( key==CODED && keyCode==DOWN ) brightnessNumber-- ;
    //CONTINUE HERE with brightness toggles
 // }
 // println(brightnessNumber);
} //End keyPressed
//
void mousePressed() {
} // End MousePressed

// End MAIN Program
