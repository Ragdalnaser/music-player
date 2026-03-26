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

float skipsymbolDivX1 = DivX + DivWidth * 1/4 ;
float skipsymbolDivY2 = DivY + DivHeight * 3/8 ;
float skipsymbolDivX3 = DivWidth * 3/4 ;
float skipsymbolDivY4 = DivHeight  * 1/2  ;
float skipsymbolDivX5 = DivX + DivWidth * 3/4;
float skipsymbolDivY6 = DivY + DivHeight * 3/4;



float stopsymbolDivX1 = DivX + DivWidth * 1/4  ;
float stopsymbolDivY2 = DivY + DivHeight *1/4 ;
float stopsymbolDivWidth= DivWidth *1/2 ;
float stopsymolDivHeight = DivHeight * 1/2 ;
//float stopsymbolDivX = DivX + DivWidth* 1/4;
//float stopsymbolDivY = DivY + DivHeight * 1/2;


float mutesymbolDivX = DivX +DivWidth * 3/8 ;
float mutesymbolDivY = DivY + DivHeight * 1/4 ;
float mutesymbolDivWidth = DivWidth * 1/2 ;
float mutesymbolDivHeight = DivHeight *1/2;

rect(DivX, DivY, DivWidth, DivHeight);
//triangle( playSymbolDivX1,playSymbolDivY2, playSymbolDivX3, playSymbolDivY4,playSymbolDivX5, playSymbolDivY6 );
//rect( startsymbolDivX, startsymbolDivY, startsymbolDivWidth, startsymbolDivHeight );
//circle(x, y, diameter); //skipsymbolDivX1, skipsymbolDivY2, skipsymbolDivX3, skipsymbolDivY4, skipsymbolDivX5, skipsymbolDivY, skipsymbolDivWidth,skipsymbolDivHeight
triangle(stopsymbolDivX1, stopsymbolDivY2, stopsymbolDivX3,stopsymbolDivY4, stopsymbolDivX5, stopsybolDivY6);
//circle( mutesymbolDivX, mutesymbolDivY, mutesymbolDivWidth, mutesymbolDivHeight
