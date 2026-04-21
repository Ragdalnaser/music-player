// Library - Minim
import ddf.minim.*; 
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
// Global Varible
Minim minim;  //initates entire class
int numberOfSongs = 1; //Best Practcie
int numberOfSoundEffect = 1;
AudioPlayer[] playlist = new AudioPlayer [numberOfSongs];
AudioPlayer[] SoundEffects = new AudioPlayer [numberOfSoundEffect];
int currentSong = numberOfSongs;// ZEERO, Math Property
//
//Display
fullScreen(); // displayWidth // displayHeight
int appWidth = width;// Best Practice
int appHeight = height;
//
//Music Loading - Structured Review
minim = new Minim(this); Mandatory;
String upArrow= "../..";
String open = "/";
String dependenciesFolder = " dependencies"; // Developer Specfic;
String MusicFolder = " Music"; //Developer Specfic;
String SoundEffectFolder = "SoundEffect"; //Developer Specfic;
String songName1 = "Ghost_Walk";
String SoundEffect1 = "Spring_Attic_Door";
String  fileExtension_mp3 = ".mp3";

// 
//CAUTION: Mistakes Below
String musicDirectory=  upArrow + open + dependenciesFolder + open + MusicFolder + open;//Concatenation
String soundEffectDirectory =  upArrow + open + dependenciesFolder + open + SoundEffectFolder + open;//Concatenation
String file = musicDirectory + songName1 + fileExtension_mp3; //TO BE Rewritten and deleted once file is LOADED
playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
file = soundEffectDirectory + SoundEffect1 + fileExtension_mp3; //Rewritting FILE
SoundEffects[currentSong] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
//
if ( playList[currentSong]==null || soundEffects[currentSong]==null ) { //ERROR, play list is NULL
  //See FILE or minim.loadFile
  println("The Play List or Sound Effects did not load properly");
  printArray(playList);
  printArray(soundEffects);
  /*
  println("Music Pathway", musicDirectory);
  println("Full Music File Pathway", file);
  */
}
playList[currentSong].play();
