
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
//Glbal Varibles
//
void setup() {/* DIVs 2D rectangles
 */
  //
  println(displayWidth, displayHeight);
  fullScreen();
  int appWidth= displayWidth ;
  int appHeight= displayHeight ;
  //
  float paperWidth = 11.0;
  float paperHeight = 13.0 ;

  float songTitleDivX= appWidth * 1.5 / paperWidth ;
  float songTitleDivY= appHeight * 1.5 / paperHeight ;
  float songTitleDivWidth = appWidth * 6 / paperWidth ;
  float songTitleDivHeight = appHeight * 1 / paperHeight ;

  float QuickbuttonDivX = appWidth * 0.0  / paperWidth ;
  float QuickbuttonDivY = appHeight  * 0.0 / paperHeight ;
  float QuickbuttonDivWidth = appWidth  * 0.5  / paperWidth ;
  float QuickbuttonDivHeight = appHeight * 0.4 / paperHeight;

  float ImageDivX= appWidth * 1.5 / paperWidth ;
  float ImageDivY= appHeight * 4.1 / paperHeight;
  float ImageDivWidth = appWidth *  7 / paperWidth  ;
  float ImageDivHeight = appHeight * 6.5 /  paperHeight;

  float outerboxDivX = appWidth * 1.5 / paperWidth;
  float outerboxDivY = appHeight * 4.9 / paperHeight;
  float outerboxDivWidth = appWidth * 11 / paperWidth;
  float outerboxDivHeight = appHeight * 13  / paperHeight;

  float MusicbuttonDivX1 = appWidth  * 1.5 / paperWidth;
  float MusicbuttonDivY1 = appHeight * 11.5 / paperHeight;
  float MusicbuttonDivWidth1 = appWidth * 1 / paperWidth;
  float MusicbuttonDivHeight1 = appHeight * 0.8 / paperHeight;

  float MusicbuttonDivX2 = appWidth  * 2.5 / paperWidth;
  float MusicbuttonDivY2 = appHeight * 11.5 / paperHeight;
  float MusicbuttonDivWidth2 = appWidth * 1 / paperWidth;
  float MusicbuttonDivHeight2 = appHeight * 0.8 / paperHeight;

  float MusicbuttonDivX3 = appWidth  * 3.5 / paperWidth;
  float MusicbuttonDivY3 = appHeight * 11.5 / paperHeight;
  float MusicbuttonDivWidth3 = appWidth * 1 / paperWidth;
  float MusicbuttonDivHeight3 = appHeight * 0.8 / paperHeight;

  float MusicbuttonDivX4 = appWidth  * 4.5 / paperWidth;
  float MusicbuttonDivY4 = appHeight * 11.5 / paperHeight;
  float MusicbuttonDivWidth4= appWidth * 1 / paperWidth;
  float MusicbuttonDivHeight4 = appHeight * 0.8 / paperHeight;


  float MusicbuttonDivX5 = appWidth  * 5.5 / paperWidth;
  float MusicbuttonDivY5 = appHeight * 11.5 / paperHeight;
  float MusicbuttonDivWidth5 = appWidth * 1 / paperWidth;
  float MusicbuttonDivHeight5 = appHeight * 0.8 / paperHeight;


  //rect( DivX, DivY, DivWidth, DivHeight);
  rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
  rect(ImageDivX, ImageDivY, ImageDivWidth, ImageDivHeight);
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
println(displayWidth, displayHeight);
fullScreen();
//

float playSymbolDivX1 = MusicbuttonDivX1 + MusicbuttonDivWidth1*1/4;
float playSymbolDivY2 = MusicbuttonDivY1 +  MusicbuttonDivHeight1*1/4;
float playSymbolDivX3 = MusicbuttonDivX2 + MusicbuttonDivWidth2*3/4;
float playSymbolDivY4 = MusicbuttonDivY2 +  MusicbuttonDivHeight2* 1/2;
float playSymbolDivX5 = MusicbuttonDivX3+ MusicbuttonDivWidth3* 1/4;
float playSymbolDivY6 = MusicbuttonDivY3 + MusicbuttonDivHeight3*3/4;

float startsymbolDivX1 = MusicbuttonDivX1 + MusicbuttonDivWidth1 * 1/4;
float startsymbolDivY2 = MusicbuttonDivY2 + MusicbuttonDivHeight2 * 1/4;
float startsymbolDivWidth3 =DivWidth3+DivHeight3 * 1/2;





float stopsymbolDivX1 = MusicbuttonDivX1 + MusicbuttonDivWidth1* 1/6 ;
float stopsymbolDivY2 = MusicbuttonDivY1+ MusicbuttonDivHeight1*1/6 ;
float stopsymbolDivX3 = MusicbuttonDivX2 + MusicbuttonDivWidth2* 1/2;
float stopsymbolDivY4 = MusicbuttonDivY2 + MusicbuttonDivHeight2* 1/2;
float stopsymbolDivX5 = MusicbuttonDivX3 + MusicbuttonDivWidth3* 1/6;
float stopsymbolDivY6 = MusicbuttonDivY3 + MusicbuttonDivHeight3* 5/6;

float stopsymbol2DivX1 = MusicbuttonDivX1 + MusicbuttonDivWidth1 * 1/2 ;
float stopsymbol2DivY2 = MusicbuttonDivY1 + MusicbuttonDivHeight1 *1/6 ;
float stopsymbol2DivX3 = MusicbuttonDivX2 + MusicbuttonDivWidth2 * 5/6;
float stopsymbol2DivY4 = MusicbuttonDivY2 + MusicbuttonDivHeight2* 1/2;
float stopsymbol2DivX5 = MusicbuttonDivX3 + MusicbuttonDivWidth3* 1/2;
float stopsymbol2DivY6 = MusicbuttonDivY4 + MusicbuttonDivHeight4* 5/6;



float mutesymbolDivX1 = MusicbuttonDivX1+MusicbuttonDivWidth1 * 1/2 ;
float mutesymbolDivY2 = MusicbuttonDivY2 + MusicbuttonDivHeight2 * 1/2 ;
float mutesymbolDivWidth3 = MusicbuttonDivWidth3   ;
float mutesymbolDivHeight4 = MusicbuttonDivHeight4 ;


float recordsymbolDivX1 = MusicbuttonDivX1 + MusicbuttonDivWidth1* 1/2;
float recordsymbolDivY2 = MusicbuttonDivY2 + MusicbuttonDivHeight2 * 1/2;
float recordsymbolDivWidth3 = MusicbuttonDivWidth3 /2  ;
float recordsymbolDivHeight4 = MusicbuttonDivHeight3 /2  ;

rect(MusicbuttonDivX1, MusicbuttonDivY2, MusicbuttonDivWidth3, MusicbuttonDivHeight4);
triangle( playSymbolDivX1,playSymbolDivY2, playSymbolDivX3, playSymbolDivY4, playSymbolDivX5,playSymbolDivY6 );
rect( startsymbolDivX1, startsymbolDivY2,startsymbolDivWidth3 ,startsymbolDivHeight4, );

triangle(stopsymbolDivX1, stopsymbolDivY2, stopsymbolDivX3,stopsymbolDivY4 ,stopsymbolDivX5, stopsymbolDivY6);
triangle(stopsymbolDivX1, stopsymbolDivY2, stopsymbolDivX3, stopsymbolDivY4,stopsymbolDivX4,stopsymbolDivY6);

ellipse( mutesymbolDivX1, mutesymbolDivY2, mutesymbolDivWidth3,mutesymbolDivHeight4);
ellipse( recordsymbolDivX1, recordsymbolDivY2, recordsymbolDivWidth3, recordsymbolDivHeight4);

}//End Setup
//
//
//println(displayWidth, displayHeight);

void draw() {
}//End Draw
//
void mousePressed() {
}//End mouse Pressed
//
void keyPressed() {
}//End key Pressed
//
//End MAIN Program
