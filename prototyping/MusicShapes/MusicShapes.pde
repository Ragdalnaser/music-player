/* DIVs 2D rectangles
*/
//
println(displayWidth, displayHeight);
fullScreen();
int appWidth= displayWidth ;
int appHeight= displayHeight ;
//
float paperWidth = 11.0;
float paperHeight = 13.0 ;

float DivX= appWidth *1/4;
float DivY=  appHeight * 1/4 ;
float DivWidth= appWidth*1/2 ;
float DivHeight = appHeight*1/2; 

float playSymbolDivX1 = DivX + DivWidth*1/4;
float playSymbolDivY2 = DivY +  DivHeight*1/4;
float playSymbolDivX3 = DivX + DivWidth*3/4;
float playSymbolDivY4 = DivY +  DivHeight* 1/2;
float playSymbolDivX5 = DivX + DivWidth*1/4;
float playSymbolDivY6 = DivY +  DivHeight*3/4;

float startsymbolDivX = DivX + DivWidth * 1/4;
float startsymbolDivY = DivY + DivHeight * 1/4;
float startsymbolDivWidth = DivWidth * 1/2;
float startsymbolDivHeight = DivHeight * 1/2;

float skipsymbolDivX = DivX + DivWidth * 1/4 ;
float skipsymbolDivY = DivY + DivHeight * 1/4 ;
float skipsymbolDivWidth = DivWidth * 3/4 ;
float skipsymbolDivHeight = DivHeight  * 3/4  ;

float stopsymbolDivX = DivX + DivWidth *  ;
float stopsymbolDivY = DivY + DivHeight * ;
float stopsymbolDivWidth = DivWidth * ;
float stopsymolDivHeight = Divheight *  ;

float mutesymbolDivX = Divx +DivWidth * ;
float  mutesymbolDivY = DivY + DivHeight *;
float  mutesymbolDivWidth = DivWidth * ;
float mutesymbolDivHeight = DivHeight *;

//rect(DivX, DivY, DivWidth, DivHeight);
//triangle( playSymbolDivX1,playSymbolDivY2, playSymbolDivX3, playSymbolDivY4,playSymbolDivX5, playSymbolDivY6 );
//rect( startsymbolDivX, startsymbolDivY, startsymbolDivWidth, startsymbolDivHeight );
rect/triangle( skipsymbolDivX, skipsymbolDivY, skipsymbolDivWidth, skipsymbolDivHeight);
rect/triangle( stopsymbolDivX, stopsymbolDivY, stopsymbolivWidth, stopsymbolDivHeight);
circle( mutesymbolDivX, mutesymbolDivY, mutesymbolDivWidth, mutesymbolDivHeight);
