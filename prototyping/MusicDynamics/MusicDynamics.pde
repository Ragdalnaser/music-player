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
int numberOfSoundEffect = 1;
AudioPlayer[] playlist = new AudioPlayer [numberOfSongs];
AudioPlayer[] SoundEffects = new AudioPlayer [numberOfSoundEffect];
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
  String upArrow= "../..";
  String open = "/";
  String MusicFolder = " Music"; //Developer Specfic;
  String dependenciesFolder = " dependencies"; // Developer Specfic;
  String SoundEffectFolder = "SoundEffect"; //Developer Specfic;
  //



  String songName1 = "Ghost_Walk";
  String SoundEffect1 = "Spring_Attic_Door";
  String fileExtension_mp3 = ".mp3";

  //
  //CAUTION: Mistakes Below
  String musicDirectory=  upArrow + open + dependenciesFolder + open + MusicFolder + open;//Concatenation
  String SoundEffect1Directory =  upArrow + open + dependenciesFolder + open + SoundEffectFolder + open;//Concatenation
  String pathway = musicDirectory + songName1 + fileExtension_mp3; //TO BE Rewritten and deleted once file is LOADED
  playlist[ currentSong ] = minim.loadFile( pathway ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  pathway = SoundEffect1Directory + SoundEffect1 + fileExtension_mp3; //Rewritting FILE
  SoundEffects[currentSong] = minim.loadFile( pathway ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  //
  //
  if (playlist[currentSong]==null || SoundEffects[currentSong]==null ) { //ERROR, play list is NULL
    //See FILE or minim.loadFile
    println("The Play List or Sound Effects did not load properly");
    printArray(playlist);
    printArray(SoundEffect1);
    /*
  println("Music Pathway", musicDirectory);
     println("Full Music File Pathway", file);
     */
  } else {
    playlist[currentSong].play();
    printArray(playlist);
  }
}//End setup
//
void draw() {
}//End draw
//
void mousePressed() {
}// End mouse Pressed
//
void keyPressed() {
}// End key Pressed
