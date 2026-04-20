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
fullScreen();
