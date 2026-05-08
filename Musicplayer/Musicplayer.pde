
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

  float playSymbol1DivX1 = MusicbuttonDivX1 + MusicbuttonDivWidth1*1/4;
  float playSymbol1DivY2 = MusicbuttonDivY1 +  MusicbuttonDivHeight1*1/4;
  float playSymbol1DivX3 = MusicbuttonDivX1 + MusicbuttonDivWidth1*3/4;
  float playSymbol1DivY4 = MusicbuttonDivY1 +  MusicbuttonDivHeight1* 1/2;
  float playSymbol1DivX5 = MusicbuttonDivX1 + MusicbuttonDivWidth1* 1/4;
  float playSymbol1DivY6 = MusicbuttonDivY1 + MusicbuttonDivHeight1*3/4;

  float startsymbol2DivX1 = MusicbuttonDivX2 + MusicbuttonDivWidth2 * 1/4;
  float startsymbol2DivY2 = MusicbuttonDivY2 + MusicbuttonDivHeight2 * 1/4;
  float startsymbol2DivWidth3 = MusicbuttonDivWidth2 * 1/2;
  float startsymbol2DivHeight4 = MusicbuttonDivHeight2 * 1/2;





  float stopsymbol3DivX1 = MusicbuttonDivX3 + MusicbuttonDivWidth3* 1/6 ;
  float stopsymbol3DivY2 = MusicbuttonDivY3+ MusicbuttonDivHeight3*1/6 ;
  float stopsymbol3DivX3 = MusicbuttonDivX3 + MusicbuttonDivWidth3* 1/2;
  float stopsymbol3DivY4 = MusicbuttonDivY3 + MusicbuttonDivHeight3* 1/2;
  float stopsymbol3DivX5 = MusicbuttonDivX3 + MusicbuttonDivWidth3* 1/6;
  float stopsymbol3DivY6 = MusicbuttonDivY3 + MusicbuttonDivHeight3* 5/6;

  float stopsymbol4DivX1 = MusicbuttonDivX3 + MusicbuttonDivWidth3* 1/2 ;
  float stopsymbol4DivY2 = MusicbuttonDivY3 + MusicbuttonDivHeight3 *1/6 ;
  float stopsymbol4DivX3 = MusicbuttonDivX3 + MusicbuttonDivWidth3 * 5/6;
  float stopsymbol4DivY4 = MusicbuttonDivY3 + MusicbuttonDivHeight3* 1/2;
  float stopsymbol4DivX5 = MusicbuttonDivX3 + MusicbuttonDivWidth3* 1/2;
  float stopsymbol4DivY6 = MusicbuttonDivY3 + MusicbuttonDivHeight3* 5/6;



  float mutesymbolDivX1 = MusicbuttonDivX5+MusicbuttonDivWidth1 * 1/2 ;
  float mutesymbolDivY1 = MusicbuttonDivY5 + MusicbuttonDivHeight2 * 1/2 ;
  float mutesymbolDivWidth3 = MusicbuttonDivWidth5   ;
  float mutesymbolDivHeight4 = MusicbuttonDivHeight5;


  float recordsymbolDivX1 = MusicbuttonDivX1 + MusicbuttonDivWidth1* 1/2;
  float recordsymbolDivY2 = MusicbuttonDivY2 + MusicbuttonDivHeight2 * 1/2;
  float recordsymbolDivWidth3 = MusicbuttonDivWidth3 /2  ;
  float recordsymbolDivHeight4 = MusicbuttonDivHeight3 /2  ;

  rect(MusicbuttonDivX1, MusicbuttonDivY2, MusicbuttonDivWidth3, MusicbuttonDivHeight4);
  triangle(playSymbol1DivX1, playSymbol1DivY2, playSymbol1DivX3, playSymbol1DivY4, playSymbol1DivX5, playSymbol1DivY6);
  rect( startsymbol2DivX1, startsymbol2DivY2, startsymbol2DivWidth3, startsymbol2DivHeight4 );

  triangle(stopsymbol4DivX1, stopsymbol4DivY2, stopsymbol4DivX3, stopsymbol4DivY4, stopsymbol4DivX5, stopsymbol4DivY6);
  triangle(stopsymbol4DivX1, stopsymbol4DivY2, stopsymbol4DivX3, stopsymbol4DivY4,stopsymbol4DivX5, stopsymbol4DivY6);

  ellipse( mutesymbolDivX1, mutesymbolDivY2, mutesymbolDivWidth3, mutesymbolDivHeight4);
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
