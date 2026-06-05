/* Divs 2D rectangles;
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





float stopsymbolDivX1 = DivX + DivWidth * 1/6 ;
float stopsymbolDivY2 = DivY + DivHeight *1/6 ;
float stopsymbolDivX3 = DivX + DivWidth * 1/2;
float stopsymbolDivY4 = DivY + DivHeight* 1/2;
float stopsymbolDivX5 = DivX + DivWidth* 1/6;
float stopsymbolDivY6 = DivY + DivHeight* 5/6;

float stopsymbol2DivX1 = DivX + DivWidth * 1/2 ;
float stopsymbol2DivY2 = DivY + DivHeight *1/6 ;
float stopsymbol2DivX3 = DivX + DivWidth * 5/6;
float stopsymbol2DivY4 = DivY + DivHeight* 1/2;
float stopsymbol2DivX5 = DivX + DivWidth* 1/2;
float stopsymbol2DivY6 = DivY + DivHeight* 5/6;



float mutesymbolDivX = DivX +DivWidth * 1/2 ;
float mutesymbolDivY = DivY + DivHeight * 1/2 ;
float mutesymbolDivWidth = DivWidth   ;
float mutesymbolDivHeight = DivHeight ;


float recordsymbolDivX = DivX + DivWidth* 1/2;
float recordsymbolDivY = DivY + DivHeight * 1/2;
float recordsymbolDivWidth = DivWidth /2  ;
float recordsymbolDivHeight = DivHeight /2  ;

rect(DivX, DivY, DivWidth, DivHeight);
triangle( playSymbolDivX1,playSymbolDivY2, playSymbolDivX3, playSymbolDivY4,playSymbolDivX5, playSymbolDivY6 );
rect( startsymbolDivX, startsymbolDivY, startsymbolDivWidth, startsymbolDivHeight );

triangle(stopsymbolDivX1, stopsymbolDivY2, stopsymbolDivX3, stopsymbolDivY4 ,stopsymbolDivX5, stopsymbolDivY6);
triangle(stopsymbol2DivX1, stopsymbol2DivY2, stopsymbol2DivX3, stopsymbol2DivY4 ,stopsymbol2DivX5, stopsymbol2DivY6);

ellipse( mutesymbolDivX, mutesymbolDivY, mutesymbolDivWidth, mutesymbolDivHeight);
//ellipse( recordsymbolDivX, recordsymbolDivY, recordsymbolDivWidth, recordsymbolDivHeight);
