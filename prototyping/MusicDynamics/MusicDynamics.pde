// Library - Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
// Global Varibles
Minim minim;  //initates entire class
int numberOfSongs = 3; //Best Practcie
int numberOfSoundEffect = 1; //
AudioPlayer[] playList = new AudioPlayer[numberOfSongs];
AudioMetaData[] playListMetaData = new AudioMetaData[numberOfSongs];
AudioPlayer[] SoundEffect = new AudioPlayer [numberOfSoundEffect];
int currentSong = numberOfSongs - numberOfSongs;// ZEERO, Math Property

//
float songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight;
color RedInk, resetInk;
float constantDecrease;
int iWhile;
float fontSize1, fontSize2, fontSize3;
PFont font;
//
void setup() {
  //Display
  fullScreen(); // displayWidth // displayHeight
  int appWidth = width;// Best Practice
  int appHeight = height;
  //
  float paperWidth = 11.0;
float paperHeight = 13.0 ;

  // Population: DIVs
int numberOfButtons = 5; //Half a button on either side as space, Center Button is Play
int widthOfButton = appWidth/numberOfButtons;
int beginningButtonSpace = widthOfButton;
float songTitleDivX= appWidth * 1.5 / 11;
float songTitleDivY= appHeight * 1.5 / 13;
float songTitleDivWidth = appWidth * 3 / 11 ;
float songTitleDivHeight = appHeight * 1 / 13 ;
float QuickbuttonDivX = appWidth * 0.0  / 11 ;
float QuickbuttonDivY = appHeight  * 0.0 / 13 ;
float QuickbuttonDivWidth = appWidth  * 0.5  / 11 ;
float QuickbuttonDivHeight = appHeight * 0.4 / 12;
float messageDIV_X = appWidth*1/2 + beginningButtonSpace*1/2;
float messageDIV_Y = appHeight*4/20;
float messageDIV_Width = appWidth*1/2 - beginningButtonSpace*1.5;
float messageDIV_Height = appHeight*9/20;
  
 

  //   Fonts from OS
  println ("start of Cansole");// ERROR: in case CONSOLE Memory not enough;
  String[] fontlist = PFont.list(); // TO list all fonts to choose, then createFont
  printArray( fontlist );// For listing all possible fonts to choose , then createfont
  //Spelling counts and  and must comapare CONSOLE v Tools / create Font / create  font Spelling
  //Tools / create Font / find  font / Do Not press "OK", known  conflict  between LoadFont() and createFont()

  // Students enter all text from Case Study
  String x = "X";
  //
  // Fonts from OS
  //rect(height) is biggest font is word is the smallest
  float fontSize1 = songTitleDivHeight; //1:1 Font Height to rectHeight
  //float fontSize2 = messageDIV_Height;
  //float fontSize3 = QuickbuttonDivHeight;
  //PFont font; //Font Varaible Name, able to have more than one Font
  String Segoe_Print = "Segoe Print"; //Spelling of the Font Matters, see PFont.list() v Create Font above
  font = createFont(Segoe_Print, fontSize1);
  //
  //Music Loading - Structured Review
  minim = new Minim(this); //Mandatory;
  String upArrow= "..";
  String open = "/";
  String musicFolder = "Music"; //Developer Specific
  String SoundEffectFolder = "SoundEffect"; //Developer Specific
  String dependenciesFolder = "dependencies"; //Developer Specific
  String SoundEffect1 = "Spring_Attic_Door";
  String fileExtension_mp3 = ".mp3";
  //
  /* Alternate Song Name Text
   String songName1 = "Newsroom";
   String songName2 = "Start_Your_Engines";
   String songName3 = "Ghost_Walk";
   */
  String[] songName = new String[numberOfSongs];
  songName[currentSong] = "Ghost Walk" ;
  currentSong++;
  songName[currentSong]="Newsroom";
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
    println("Insde FOR, pathway:", pathway);
    playList[ i ] = minim.loadFile( pathway ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library

    //CAUTION: not currentSong var
    println(currentSong);
  }
  pathway = SoundEffect1Directory + SoundEffect1 + fileExtension_mp3; //Rewritting FILE
  playList[currentSong] = minim.loadFile( pathway ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  //
  for ( int i=0; i<numberOfSongs; i++ ) {
    if ( playList[i]==null ) { //ERROR, play list is NULL
      //See FILE or minim.loadFile
      println("The Play List did not load properly");
      printArray(playList);
      exit();
    }
  }
  if ( SoundEffect[currentSong]==null ) { //ERROR, play list is NULL
    println("The Sound Effects did not load properly");
    printArray(SoundEffect);
    exit();
  }
  //
  // DIVs
  rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
  //rect(QuickbuttonDivX, QuickbuttonDivY, QuickbuttonDivWidth, QuickbuttonDivHeight);
  //rect(messageDIV_X, messageDIV_Y, messageDIV_Width, messageDIV_Height );
  //
  // Drawing Text
  color RedInk = #E82A2A; // AP Minilesson  in bit , 8-bit or byte ( gray scale 255
  color whiteInk=   #FFFFFF; // grey scale is 255
  fill(RedInk);// Ink  Hexidecimal copied from the color selector
  // Grey scale 0-255
  textFont(font, fontSize1);
  text( x, songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
  textAlign( LEFT, CENTER);// Align, X&Y, See processing. org / reference
  // Values:[ LEFT|CENTRE|Right]& [Top|CENTER| BOTTOM| BASELINE];

  // Procedure Passing RECT(#2) && fontSize(RECT#)
  float constantDecrease = 0.99;
  int iWhile=0;
  textFont(font, fontSize1); //must include textSize() before text() & textWidth()
  while (textWidth(playListMetaData[currentSong].fileName()) > songTitleDivWidth ) {
    println("Help ? Troubleshooting");
    //println("While #1"); //Infinite WHILE Check
    iWhile++;
    if ( iWhile>10000 ) { //>1000 means -1 text or i
      println("Infninte WHILE Loop");
      exit();
    }
    fontSize1 *= constantDecrease;
    textFont(font, fontSize1);
  }
  text( playListMetaData[currentSong].title(), songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight );
  fill(resetInk);
  //
  //playList[currentSong].play();
  // SoundEffect[currentSong].play();
}
//
//End Setup
//
void draw() {
  if (!playList[currentSong].isPlaying()) {
    playList[currentSong].play();
  }
  rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
  fill(RedInk);
  text( playListMetaData[currentSong].title(), songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight );
  fill(#FFFFFF);// resetInk
}//End Draw
//
void mousePressed() {
}//End Mouse Pressed
//
void keyPressed() {

  /* Simple Play
   playList[currentSong].play();
   currentSong++;
   */
  //
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
//
//End MAIN Program
