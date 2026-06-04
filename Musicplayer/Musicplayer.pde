
/* Music App, Final Project
 */
//
//Minim Libaray
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
Minim minim;  //initates entire class
int numberOfSongs = 3; //Best Practcie
int numberOfSoundEffect = 1; //
AudioPlayer[] playList = new AudioPlayer[numberOfSongs];
AudioMetaData[] playListMetaData = new AudioMetaData[numberOfSongs];
AudioPlayer[] SoundEffect = new AudioPlayer [numberOfSoundEffect];
int currentSong = numberOfSongs - numberOfSongs;// ZEERO, Math Property

//

float constantDecrease;
int iWhile;
float fontSize1, fontSize2, fontSize3;
PFont font;
//

//Glbal Varibles
//
float QuickbuttonDivX, QuickbuttonDivY, QuickbuttonDivWidth, QuickbuttonDivHeight;
float playsymbol1DivX1, playsymbol1DivY2, playsymbol1DivX3, playsymbol1DivY4, playsymbol1DivX5, playsymbol1DivY6;
float startsymbol2DivX1, startsymbol2DivY2, startsymbol2DivWidth3, startsymbol2DivHeight4;
float Nextsymbol3DivX1, Nextsymbol3DivY2, Nextsymbol3DivX3, Nextsymbol3DivY4, Nextsymbol3DivX5, Nextsymbol3DivY6;
float Nextsymbol6DivX1, Nextsymbol6DivY2, Nextsymbol6DivX3, Nextsymbol6DivY4, Nextsymbol6DivX5, Nextsymbol6DivY6;
float mutesymbol4DivX1, mutesymbol4DivY2, mutesymbol4DivWidth3, mutesymbol4DivHeight4;
float pausesymbol5DivX1, pausesymbol5DivY1, pausesymbol5DivX2, pausesymbol5DivY2, pausesymbol5DivWidth1, pausesymbol5DivHeight1, pausesymbol5DivWidth2, pausesymbol5DivHeight2;
Float MusicbuttonDivX1, MusicbuttonDivY1, MusicbuttonDivWidth1, MusicbuttonDivHeight1;
float MusicbuttonDivX2, MusicbuttonDivY2, MusicbuttonDivWidth2, MusicbuttonDivHeight2;
float MusicbuttonDivX3, MusicbuttonDivY3, MusicbuttonDivWidth3, MusicbuttonDivHeight3;
float MusicbuttonDivX4, MusicbuttonDivY4, MusicbuttonDivWidth4, MusicbuttonDivHeight4;
float MusicbuttonDivX5, MusicbuttonDivY5, MusicbuttonDivWidth5, MusicbuttonDivHeight5;
boolean isPaused = false;
boolean isMuted = false;
void setup() {

  //Display
  //fullScreen
  int appWidth = width;//displayWidth
  int appHeight = height;//displayHeight
  /* DIVs 2D rectangles
   */
  //

  fullScreen();

  //
  float paperWidth = 11.0;
  float paperHeight = 13.0 ;

  float songTitleDivX= appWidth * 1.5 / paperWidth ;
  float songTitleDivY= appHeight * 1.5 / paperHeight ;
  float songTitleDivWidth = appWidth * 6 / paperWidth ;
  float songTitleDivHeight = appHeight * 1 / paperHeight ;

  QuickbuttonDivX = appWidth * 0.0  / paperWidth ;
  QuickbuttonDivY = appHeight  * 0.0 / paperHeight ;
  QuickbuttonDivWidth = appWidth  * 0.5  / paperWidth ;
  QuickbuttonDivHeight = appHeight * 0.4 / paperHeight;

  float outerboxDivX = appWidth * 1.5 / paperWidth;
  float outerboxDivY = appHeight * 4.9 / paperHeight;
  float outerboxDivWidth = appWidth * 11 / paperWidth;
  float outerboxDivHeight = appHeight * 13  / paperHeight;

  MusicbuttonDivX1 = appWidth  * 1.5 / paperWidth;
  MusicbuttonDivY1 = appHeight * 11.5 / paperHeight;
  MusicbuttonDivWidth1 = appWidth * 1 / paperWidth;
  MusicbuttonDivHeight1 = appHeight * 0.8 / paperHeight;

  MusicbuttonDivX2 = appWidth  * 2.5 / paperWidth;
  MusicbuttonDivY2 = appHeight * 11.5 / paperHeight;
  MusicbuttonDivWidth2 = appWidth * 1 / paperWidth;
  MusicbuttonDivHeight2 = appHeight * 0.8 / paperHeight;

  MusicbuttonDivX3 = appWidth  * 3.5 / paperWidth;
  MusicbuttonDivY3 = appHeight * 11.5 / paperHeight;
  MusicbuttonDivWidth3 = appWidth * 1 / paperWidth;
  MusicbuttonDivHeight3 = appHeight * 0.8 / paperHeight;

  MusicbuttonDivX4 = appWidth  * 4.5 / paperWidth;
  MusicbuttonDivY4 = appHeight * 11.5 / paperHeight;
  MusicbuttonDivWidth4= appWidth * 1 / paperWidth;
  MusicbuttonDivHeight4 = appHeight * 0.8 / paperHeight;


  MusicbuttonDivX5 = appWidth  * 5.5 / paperWidth;
  MusicbuttonDivY5 = appHeight * 11.5 / paperHeight;
  MusicbuttonDivWidth5 = appWidth * 1 / paperWidth;
  MusicbuttonDivHeight5 = appHeight * 0.8 / paperHeight;


  //rect( DivX, DivY, DivWidth, DivHeight);
  rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
  rect(QuickbuttonDivX, QuickbuttonDivY, QuickbuttonDivWidth, QuickbuttonDivHeight);
  //rect(outerboxDivX, outerboxDivY, outerboxDivWidth, outerboxDivHeight);
  rect(MusicbuttonDivX1, MusicbuttonDivY1, MusicbuttonDivWidth1, MusicbuttonDivHeight1);
  rect(MusicbuttonDivX2, MusicbuttonDivY2, MusicbuttonDivWidth2, MusicbuttonDivHeight2);
  rect(MusicbuttonDivX3, MusicbuttonDivY3, MusicbuttonDivWidth3, MusicbuttonDivHeight3);
  rect(MusicbuttonDivX4, MusicbuttonDivY4, MusicbuttonDivWidth4, MusicbuttonDivHeight4);
  rect(MusicbuttonDivX5, MusicbuttonDivY5, MusicbuttonDivWidth5, MusicbuttonDivHeight5);
  /* Divs 2D rectangles;
   */
  //

  playsymbol1DivX1 = MusicbuttonDivX1 + MusicbuttonDivWidth1*1/4;
  playsymbol1DivY2 = MusicbuttonDivY1 +  MusicbuttonDivHeight1*1/4;
  playsymbol1DivX3 = MusicbuttonDivX1 + MusicbuttonDivWidth1*3/4;
  playsymbol1DivY4 = MusicbuttonDivY1 +  MusicbuttonDivHeight1* 1/2;
  playsymbol1DivX5 = MusicbuttonDivX1 + MusicbuttonDivWidth1* 1/4;
  playsymbol1DivY6 = MusicbuttonDivY1 + MusicbuttonDivHeight1*3/4;

  startsymbol2DivX1 = MusicbuttonDivX2 + MusicbuttonDivWidth2 * 1/4;
  startsymbol2DivY2 = MusicbuttonDivY2 + MusicbuttonDivHeight2 * 1/4;
  startsymbol2DivWidth3 = MusicbuttonDivWidth2 * 1/2;
  startsymbol2DivHeight4 = MusicbuttonDivHeight2 * 1/2;





  Nextsymbol3DivX1 = MusicbuttonDivX3 + MusicbuttonDivWidth3* 1/6 ;
  Nextsymbol3DivY2 = MusicbuttonDivY3+ MusicbuttonDivHeight3*1/6 ;
  Nextsymbol3DivX3 = MusicbuttonDivX3 + MusicbuttonDivWidth3* 1/2;
  Nextsymbol3DivY4 = MusicbuttonDivY3 + MusicbuttonDivHeight3* 1/2;
  Nextsymbol3DivX5 = MusicbuttonDivX3 + MusicbuttonDivWidth3* 1/6;
  Nextsymbol3DivY6 = MusicbuttonDivY3 + MusicbuttonDivHeight3* 5/6;

  Nextsymbol6DivX1 = MusicbuttonDivX3 + MusicbuttonDivWidth3* 1/2 ;
  Nextsymbol6DivY2 = MusicbuttonDivY3 + MusicbuttonDivHeight3 *1/6 ;
  Nextsymbol6DivX3 = MusicbuttonDivX3 + MusicbuttonDivWidth3 * 5/6;
  Nextsymbol6DivY4 = MusicbuttonDivY3 + MusicbuttonDivHeight3* 1/2;
  Nextsymbol6DivX5 = MusicbuttonDivX3 + MusicbuttonDivWidth3* 1/2;
  Nextsymbol6DivY6 = MusicbuttonDivY3 + MusicbuttonDivHeight3* 5/6;



  mutesymbol4DivX1 = MusicbuttonDivX4+MusicbuttonDivWidth4 * 1/2 ;
  mutesymbol4DivY2 = MusicbuttonDivY4 + MusicbuttonDivHeight4 * 1/2 ;
  mutesymbol4DivWidth3 = MusicbuttonDivWidth4   ;
  mutesymbol4DivHeight4 = MusicbuttonDivHeight4;


  pausesymbol5DivX1 = MusicbuttonDivX5 + MusicbuttonDivWidth5* 1/8;
  pausesymbol5DivY1 = MusicbuttonDivY5 + MusicbuttonDivHeight5 * 1/4;
  pausesymbol5DivWidth1 = MusicbuttonDivWidth5 /8  ;
  pausesymbol5DivHeight1 = MusicbuttonDivHeight5 /2  ;
  pausesymbol5DivX2 = MusicbuttonDivX5 + MusicbuttonDivWidth5* 6/8;
  pausesymbol5DivY2 = MusicbuttonDivY5 + MusicbuttonDivHeight5 * 1/4;
  pausesymbol5DivWidth2 =  MusicbuttonDivWidth5 /8;
  pausesymbol5DivHeight2 = MusicbuttonDivHeight5 /2;

  rect(MusicbuttonDivX1, MusicbuttonDivY2, MusicbuttonDivWidth3, MusicbuttonDivHeight4);
  triangle(playsymbol1DivX1, playsymbol1DivY2, playsymbol1DivX3, playsymbol1DivY4, playsymbol1DivX5, playsymbol1DivY6);
  rect( startsymbol2DivX1, startsymbol2DivY2, startsymbol2DivWidth3, startsymbol2DivHeight4 );

  triangle(Nextsymbol3DivX1, Nextsymbol3DivY2, Nextsymbol3DivX3, Nextsymbol3DivY4, Nextsymbol3DivX5, Nextsymbol3DivY6);
  triangle(Nextsymbol6DivX1, Nextsymbol6DivY2, Nextsymbol6DivX3, Nextsymbol6DivY4, Nextsymbol6DivX5, Nextsymbol6DivY6);

  ellipse( mutesymbol4DivX1, mutesymbol4DivY2, mutesymbol4DivWidth3, mutesymbol4DivHeight4);

  rect(pausesymbol5DivX1, pausesymbol5DivY1, pausesymbol5DivWidth1, pausesymbol5DivHeight1);
  rect(pausesymbol5DivX2, pausesymbol5DivY1, pausesymbol5DivWidth1, pausesymbol5DivHeight1);

  /* Text, Simple ... Hardcoded;
   */
  //
  //
  // Display

  //
  // Population: DIVs
  int numberOfButtons = 5; //Half a button on either side as space, Center Button is Play
  int widthOfButton = appWidth/numberOfButtons;
  int beginningButtonSpace = widthOfButton;
  //

  //
  float songTitleDivX1= appWidth * 1.5 / 11;
  float songTitleDivY2= appHeight * 1.5 / 13;
  float songTitleDivWidth3 = appWidth * 3 / 11 ;
  float songTitleDivHeight4 = appHeight * 1 / 13 ;
  float QuickbuttonDivX1 = appWidth * 0.0  / 11 ;
  float QuickbuttonDivY2 = appHeight  * 0.0 / 13 ;
  float QuickbuttonDivWidth3 = appWidth  * 0.5  / 11 ;
  float QuickbuttonDivHeight4 = appHeight * 0.4 / 12;
  float messageDiV_X = appWidth*5/8 + beginningButtonSpace*13/16;
  float messageDiV_Y = songTitleDivY;
  float messageDiV_Width = appWidth*1/2 - beginningButtonSpace*1.5;
  float messageDiV_Height = appHeight*9/20;
  //
  // DIVs
  rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
  //rect(QuickbuttonDivX, QuickbuttonDivY, QuickbuttonDivWidth, QuickbuttonDivHeight);
  rect( messageDiV_X, messageDiV_Y, messageDiV_Width, messageDiV_Height);
  //
  //Strings, Text, Literal
  String Title1 = "Ghost Walk";
  String Title2 = "Newsroom";
  String Title3 = "start your engine";

  /* Full String longer than Rectangle, "Thunder" I changed 2D Size."
   - divHeight must fit the font size or text is not shown (Advanced, error check includes %-decrease)
   - Fonts includes the in WHITE SPACE around the foreground "coloured ink"
   - divWidth must include the font size
   - if font is too big, wrap around happens
   - OR full string is not drawn
   */

  /* Fonts from OS
   println ("start of Cansole");// ERROR: in case CONSOLE Memory not enough;
   String[] fontlist = PFont.List(); // TO list all fonts to choose, then createFont
   printlnArray( fontlist );// For listing all possible fonts to choose , then createfont
   //Spelling counts and  and must comapare CONSOLE v Tools / create Font / create  font Spelling
   //Tools / create Font / find  font / Do Not press "OK", known  conflict  between LoadFont() and createFont()
   */




  // students  enter all the text from the case study
  //
  // Fonts from OS
  float fontSize1 = songTitleDivHeight; //Entire Program, Algorithm to have smallest font size
  float fontSize2 = appHeight; //Entire Program, Algorithm to have smallest font size
  float fontSize3 = appHeight; //Entire Program, Algorithm to have smallest font size
  //println( fontSize );
  PFont font; //font Varaible Name, able to have more than one Font
  String harrington = "Harrington"; //Spelling of the Font Matters, see PFont.list() v Create Font above
  font = createFont(harrington, fontSize1);

  //println (fontSize);

  //
  // Drawing Test
  color RedInk = #E82A2A; // AP Minilesson  in bit , 8-bit or byte ( gray scale 255
  color whiteInk=   #FFFFFF; // grey scale is 255
  color  resetInk  = whiteInk;
  fill(RedInk);// Ink  Hexidecimal copied from the color selector
  // Grey scale 0-255
  textFont(font, fontSize1);
  //text( Title, songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
  textAlign( CENTER, BASELINE);// Align, X&Y, See processing. org / reference
  // Values:[ LEFT|CENTRE|Right]& [Top|CENTER| BUTTOM| BASELINE];
  textFont(font, fontSize1); //must include textSize() before text() & textWidth()
  //Note: drawing text after height dimension solved
  //WHILE solves length dimension
  //Additional docing required to adjust consistent text size for meaning in app
  float constantDecrease = 0.99;
  int iWhile=0;
  textAlign (LEFT, CENTER);
  while (textWidth(Title1) > songTitleDivWidth) {
    //println("While #1"); //Demon Infinite LOOP
    iWhile++;
    if ( iWhile>1000 ) {
      println("Infininte WHILE Loop");
      exit();
    }
    fontSize1 *= constantDecrease;
    textFont(font, fontSize1);
  }
  text( Title1, songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight );
  textFont(font, fontSize2); //must include textSize() before text() & textWidth()
  iWhile=0;
  while (textWidth(Title2) > messageDiV_Width) {
    //println("While #1"); //Demon Infinite LOOP
    iWhile++;
    if ( iWhile>1000 ) {
      println("Infninte WHILE Loop");
      exit();
    }
    fontSize2 *= constantDecrease;
    textFont(font, fontSize2);
  }
  text( Title2, messageDiV_X, messageDiV_Y, messageDiV_Width, messageDiV_Height );
  textFont(font, fontSize3); //must include textSize() before text() & textWidth()
  iWhile=0;
  while (textWidth(Title3) > QuickbuttonDivWidth) {
    //println("While #1"); //Demon Infinite LOOP
    iWhile++;
    if ( iWhile>1000 ) {
      println("Infninte WHILE Loop");
      exit();
    }
    fontSize3 *= constantDecrease;
    textFont(font, fontSize3);
  }
  text( Title3, QuickbuttonDivX, QuickbuttonDivY, QuickbuttonDivWidth, QuickbuttonDivHeight );
  fill(resetInk);
  //
  String upArow = "..";
  String dependenciesFolder = "dependencies";
  String imagesFolder = "Images";
  String imageName1 = "Taylor_Swift_at_the_2023_MTV_Video_Music_Awards_(3)";
  String imageName2 = "Clock";
  String imageName3 = "Table";
  String fileExtension1 = ".png";
  String open = "/";
  //
  //
  //Concatenation
  //Note, Cut Out, See Absolute Pathway:
  //See Relative Pathway: Dependencies\Images
  String imageDirectory = upArow + open + dependenciesFolder + open + imagesFolder + open;
  String pathway1 = imageDirectory + imageName1 + fileExtension1;
  //String pathway2 = imageDirectory + imageName2 + fileExtension;
  //String pathway3 = imageDirectory + imageName3 + fileExtension;
  //println(pathway);
  //
  PImage image1 = loadImage( pathway1 );
  //PImage image2 = loadImage( pathway2 );
  int imageDivWidth2 = 679;
  int imageDivHeight2 = 679;
  //PImage image3 = loadImage( pathway3 );
  //
  //Population: DIVs
  float imageDivX = beginningButtonSpace;
  float imageDivY= appHeight * 4.1 / 13;
  float imageDivWidth = appWidth *  7 / 11  - beginningButtonSpace*1.5;
  float imageDivHeight = appHeight * 6.5 / 13;
  //
  //Image: Aspect Ratio Algorithm for any Image
  float image2AspectRation_GreatOne = ( imageDivWidth2 > imageDivHeight2 ) ? float(imageDivWidth2) / float(imageDivHeight2) : float(imageDivHeight2) / float(imageDivWidth2 ) ;
  float imageDivWidthAdjusted2 = imageDivWidth;
  float imageDivHeightAdjusted1;
  if ( imageDivWidth2 >= imageDivWidth ) {
    imageDivHeightAdjusted1 = imageDivWidthAdjusted2 / image2AspectRation_GreatOne;
    while ( imageDivHeightAdjusted1 > imageDivHeight ) {
      imageDivWidthAdjusted2 *= 0.99;
      imageDivHeightAdjusted1 = imageDivWidthAdjusted2 / image2AspectRation_GreatOne ; //CHANGE THIS
    }//End WHILE
  } else {
    imageDivHeightAdjusted1 = imageDivWidthAdjusted2 * image2AspectRation_GreatOne;
    while ( imageDivHeightAdjusted1 > imageDivHeight ) {
      imageDivWidthAdjusted2 *= 0.99;
      imageDivHeightAdjusted1 = imageDivWidthAdjusted2 * image2AspectRation_GreatOne ; //CHANGE THIS
    }//End WHILE
  }


  //println( float(imageWidth2)/ float(imageHeight2) );
  //Ternary Operator for As[pect Ratio: Q: greatOne v lessOne

  println("Verify Image Aspect Ratio Greater than One:", image2AspectRation_GreatOne>=1, "\tActual Number:", image2AspectRation_GreatOne);

  println("Comparison of imageHeight2 and divHeight:", imageDivHeight2, imageDivHeight);

  println("imageDivHeightAdjusted1", imageDivHeightAdjusted1);
  println("Question: is this too big?", "\t\thint ... reposition image() above rect(div)");
  // WHILE LOOP: decrease imageWidth to decrease the calculated imageHeight (% decrease within mutliplication assignment operator)

  //
  //CAUTION: might need to reposition rect(div) with image()
  //image(image2, imageDivX, imageDivY, imageWidthAdjusted2, imageHeightAdjusted1);
  //DIV: Image
  rect(imageDivX, imageDivY, imageDivWidth, imageDivHeight);
  //
  //image(image1, 0, 0);
  image(image1, imageDivX, imageDivY, imageDivWidthAdjusted2, imageDivHeightAdjusted1);
  //image(image3, 0, 0);
  //Music Loading - Structured Review
  minim = new Minim(this); //Mandatory;
  String upArrow= "..";
  String musicFolder = "Music"; //Developer Specific
  String SoundEffectFolder = "SoundEffect"; //Developer Specific
  String SoundEffect1 = "Spring_Attic_Door";
  String fileExtension_mp3 = ".mp3";


  /*   Fonts from OS
   println ("start of Cansole");// ERROR: in case CONSOLE Memory not enough;
   String[] fontlist = PFont.list(); // TO list all fonts to choose, then createFont
   printArray( fontlist );// For listing all possible fonts to choose , then createfont
   */
  //Spelling counts and  and must comapare CONSOLE v Tools / create Font / create  font Spelling
  //Tools / create Font / find  font / Do Not press "OK", known  conflict  between LoadFont() and createFont()

  // Students enter all text from Case Study
  String x = "X";
  //
  // Fonts from OS
  //rect(height) is biggest font is word is the smallest
  fontSize1 = songTitleDivHeight * 0.9; //1:1 Font Height to rectHeight
  fontSize2 = messageDiV_Height * 0.15;
  fontSize3 = QuickbuttonDivHeight*0.9;
  //PFont font; //Font Varaible Name, able to have more than one Font
  String Segoe_Print = "Segoe Print"; //Spelling of the Font Matters, see PFont.list() v Create Font above
  font = createFont(Segoe_Print, fontSize1);
  //

  /* Alternate Song Name Text
   String songName1 = "Newsroom";
   String songName2 = "Start_Your_Engines";
   String songName3 = "Ghost_Walk";
   */
  String[] songName = new String[numberOfSongs];
  songName[currentSong] = "Ghost Walk" ;
  currentSong++;
  songName[currentSong]= "Newsroom";
  currentSong++;
  songName[currentSong]="Start_Your_Engines";
  currentSong=0;
  //
  //CAUTION: Mistakes Below
  String musicDirectory=  upArrow + open + upArrow + open + dependenciesFolder + open + musicFolder + open;//Concatenation
  String SoundEffect1Directory =  upArrow + open + upArrow + open + dependenciesFolder + open + SoundEffectFolder + open;//Concatenation
  String pathway;
  for ( int i=0; i<numberOfSongs; i++ ) {
    //CAUTION: removed ReadMe.txt
    pathway = musicDirectory + songName[i] + fileExtension_mp3; //TO BE Rewritten and deleted once file is LOADED
    playList[ i ] = minim.loadFile( pathway ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
    playListMetaData[ i ] = playList[ i ].getMetaData();
    //CAUTION: not currentSong var
  }
  for ( int i=0; i<numberOfSongs; i++ ) {
    if ( playList[i]==null ) { //ERROR, play list is NULL
      //See FILE or minim.loadFile
      println("The Play List did not load properly");
      printArray(playList);
      exit();
    }
  }
  pathway = SoundEffect1Directory + SoundEffect1 + fileExtension_mp3;
  SoundEffect[currentSong] = minim.loadFile(pathway);

  if ( SoundEffect[currentSong]== null ) { //ERROR, play list is NULL
    println("The Sound Effects did not load properly");
    printArray(SoundEffect);
    exit();
  }
  //
  // DIVs
}//End Setup
//
//
//println(displayWidth, displayHeight);

void draw() {

  if (isPaused == false) {
    playList[currentSong].play();
  }

  if (isMuted == true) {
    playList[currentSong].mute();
  } else {
    playList[currentSong].unmute();
  }
}//End Draw
//
void mousePressed() {
  if ( mouseX>MusicbuttonDivX1 && mouseX<MusicbuttonDivX1+MusicbuttonDivWidth1 && mouseY>MusicbuttonDivY1 && mouseY<MusicbuttonDivY1+MusicbuttonDivHeight1 ) {
    isPaused = false;

    //play
  }

  if ( mouseX>MusicbuttonDivX2 && mouseX<MusicbuttonDivX2+MusicbuttonDivWidth2 && mouseY>MusicbuttonDivY2 && mouseY<MusicbuttonDivY2+MusicbuttonDivHeight2 ) {
    playList[currentSong].pause();
    playList[currentSong].rewind();
    isPaused = true;
    //stop  }
  }

  if ( mouseX>MusicbuttonDivX3 && mouseX<MusicbuttonDivX3+MusicbuttonDivWidth3 && mouseY>MusicbuttonDivY3 && mouseY<MusicbuttonDivY3+MusicbuttonDivHeight3 ) {
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause();
      playList[currentSong].rewind();
      //
      if ( currentSong==numberOfSongs-1 ) {
        currentSong = 0;
      } else {
        currentSong++;
      }
      playList[currentSong].play();
    } else {
      //
      playList[currentSong].rewind();
      //
      if ( currentSong==numberOfSongs-1 ) {
        currentSong = 0;
      } else {
        currentSong++;
      }
      // NEXT will not automatically play the song
      //song[currentSong].play();
    }
    //next
  }

  if ( mouseX>MusicbuttonDivX4 && mouseX<MusicbuttonDivX4+MusicbuttonDivWidth4 && mouseY>MusicbuttonDivY4 && mouseY<MusicbuttonDivY4+MusicbuttonDivHeight4 ) {
    playList[currentSong].mute();
    //mute
    if ( isMuted == true ) {
      isMuted = false;
    } else {
      isMuted = true;
    }
  }

  if ( mouseX>MusicbuttonDivX5 && mouseX<MusicbuttonDivX5+MusicbuttonDivWidth5 && mouseY>MusicbuttonDivY5 && mouseY<MusicbuttonDivY5+MusicbuttonDivHeight5 ) {
    playList[currentSong].pause();
    // pause
    isPaused = true;
  }
}

//

//End mouse Pressed
void keyPressed() {
  /* Key Board Short Cuts ... learning what the Music Buttons could be
   Note: CAP Lock with ||
   if ( key==? || key==? ) ; //'' only
   -
   if ( key==CODED || keyCode==SpecialKey ) ; //Special Keys abriviated CAPS
   -
   All Music Player Features are built out of these Minim AudioPlayer() functions
   .isPlaying()
   .isMuted()
   .loop(0), parameter is number of iterations after play
   .loop(), parameter is infinite interations
   .play(), parameter is built-in skip (milli-seconds or crystal-time)
   .pause()
   .rewind()
   .skip()
   .unmute()
   .mute()
   -
   Lesson Music Button Features based on single, double, and spamming taps
   - Play
   - Pause
   - Stop
   - Loop Once
   - Loop Infinite
   - Fast Forward
   - Fast Rewind
   - Mute
   - Next Song
   - Previous Song
   - Shuffle
   -
   - Advanced Buttons & Combinations
   - Play-Pause-Stop
   - Auto Play
   - Random Song
   */
  //if ( key=='P' || key=='p' ) playList[currentSong].play(); //Simple Play, no double tap possible
  //
  if ( key=='P' || key=='p' ) playList[currentSong].loop(0); //Simple Play, double tap possible
  /* Note: double tap is automatic rewind, no pause
   Symbol is two triangles
   This changes what the button might become after it is pressed
   */
  if ( key=='O' || key=='o' ) { // Pause
    //
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause();
    } else {
      playList[currentSong].play();
    }
  }
  //if ( key=='S' || key=='s' ) song[currentSong].pause(); //Simple Stop, no double taps
  //
  if ( key=='S' | key=='s' ) {
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause(); //single tap
    } else {
      playList[currentSong].rewind(); //double tap
    }
  }
  if ( key=='L' || key=='l' ) playList[currentSong].loop(1); // Loop ONCE: Plays, then plays again, then stops & rewinds
  if ( key=='K' || key=='k' ) playList[currentSong].loop(); // Loop Infinitely //Parameter: BLANK or -1
  if ( key=='F' || key=='f' ) playList[currentSong].skip( 10000 ); // Fast Forward, Rewind, & Play Again //Parameter: milliseconds
  if ( key=='R' || key=='r' ) playList[currentSong].skip( -10000 ); // Fast Reverse & Play //Parameter: negative numbers
  if ( key=='W' || key=='w' ) { // MUTE
    //
    //MUTE Behaviour: stops electricty to speakers, does not stop file
    //NOTE: MUTE has NO built-in PUASE button, NO built-in rewind button
    //ERROR: if song near end of file, user will not know song is at the end
    //Known ERROR: once song plays, MUTE acts like it doesn't work
    if ( playList[currentSong].isMuted() ) {
      //ERROR: song might not be playing
      //CATCH: ask .isPlaying() or !.isPlaying()
      playList[currentSong].unmute();
    } else {
      //Possible ERROR: Might rewind the song
      playList[currentSong].mute();
    }
  }
  if ( key==CODED || keyCode==ESC ) exit(); // QUIT //UP
  if ( key=='Q' || key=='q' ) exit(); // QUIT
  //
  if ( key=='N' || key=='n' ) { // NEXT //See .txt for starter hint
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause();
      playList[currentSong].rewind();
      //
      if ( currentSong==numberOfSongs-1 ) {
        currentSong = 0;
      } else {
        currentSong++;
      }
      playList[currentSong].play();
    } else {
      //
      playList[currentSong].rewind();
      //
      if ( currentSong==numberOfSongs-1 ) {
        currentSong = 0;
      } else {
        currentSong++;
      }
      // NEXT will not automatically play the song
      //song[currentSong].play();
    }
  }
  if ( key=='B' || key=='b' ) { // PREVIOUS
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause();
      playList[currentSong].rewind();

      if ( currentSong==0 ) {
        currentSong = numberOfSongs-1;
      } else {
        currentSong--;
      }

      playList[currentSong].play();
    } else {

      playList[currentSong].rewind();

      if ( currentSong==0 ) {
        currentSong = numberOfSongs-1;
      } else {
        currentSong--;
      }
    }
  }
  //
  if ( key=='Y' || key=='y' ) currentSong = int(random(numberOfSongs)); //random(0, numberOfSongs)
  //
  //if ( key=='S' || key=='s' ) ; // Shuffle - PLAY (Random)
  //Note: will randomize the currentSong number
  //Caution: random() is used very often
  //Question: how does truncating decimals affect returning random() floats
  /*
  if ( key=='' || key=='' ) ; // Play-Pause-STOP //Advanced, beyond single buttons
   - need to have basic GUI complete first
   */
  //
}//End Key Pressed
//End key Pressed
//
//End MAIN Program
