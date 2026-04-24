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
AudioPlayer[] playlist = new AudioPlayer [numberOfSongs];
AudioPlayer[] SoundEffect = new AudioPlayer [numberOfSoundEffect];
int currentSong = numberOfSongs - numberOfSongs;// ZEERO, Math Property
//
void setup() {
  //Display
  fullScreen(); // displayWidth // displayHeight
  int appWidth = width;// Best Practice
  int appHeight = height;
  //
  //Music Loading - Structured Review
  minim = new Minim(this); //Mandatory;
  String upArrow= "..";
  String open = "/";
  String musicFolder = "Music"; //Developer Specific
  String SoundEffectFolder = "Sound Effects"; //Developer Specific
  String dependenciesFolder = "Dependencies"; //Developer Specific
  String songName1 = "Ghost_Walk" 
  String SoundEffect1 = Spring_Attic_Door
  String fileExtension - mp3 
  //
   
  

  String SoundEffect1 = "Spring_Attic_Door";
  String fileExtension_mp3 = ".mp3";

  //
  //CAUTION: Mistakes Below
  String musicDirectory=  upArrow + open + upArrow + open + dependenciesFolder + open + MusicFolder + open;//Concatenation
  String SoundEffect1Directory =  upArrow + open + upArrow + open + dependenciesFolder + open + SoundEffectFolder + open;//Concatenation
  String pathway;
  for ( int i=0; i<numberOfSongs; i++ ) {
    pathway = musicDirectory + songName[i] + fileExtension_mp3; //TO BE Rewritten and deleted once file is LOADED
    playList[ currentSong ] = minim.loadFile( pathway ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  } 
  pathway = SoundEffect1Directory + SoundEffect1 + fileExtension_mp3; //Rewritting FILE
  SoundEffect[currentSong] = minim.loadFile( pathway ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  //

for ( int i=0; i<numberOfSongs; i++ ) {
    if ( playList[i]==null ) { //ERROR, play list is NULL
      //See FILE or minim.loadFile
      println("The Play list did not load properly");
      printArray(playList);
      exit();
    }
  }
  if ( soundEffect[currentSong]==null ) { //ERROR, play list is NULL
    println("The Sound Effects did not load properly");
    printArray(soundEffect);
    exit();
    }
    //
}//End Setup
//
void draw() {
  playList[currentSong].play();
}//End Draw
//
void mousePressed() {
}//End Mouse Pressed
//
void keyPressed()
   -
  
}//End Key Pressed
//
//End MAIN Program
