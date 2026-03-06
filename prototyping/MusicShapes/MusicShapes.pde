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
float DivWidth= appWidth*3/4 ;
float DivHeight = appHeight*3/4; 

float playSymbolDivX1 = DivX + DivWidth*1/4;
float playSymbolDivY2 = DivY +  DivHeight*1/4;
float playSymbolDivX3 = DivX + DivWidth*3/4;
float playSymbolDivY4 = DivY +  DivHeight*1/2;
float playSymbolDivX5 = DivX + DivWidth*1/4;
float playSymbolDivY6 = DivY +  DivHeight*3/4;




//rect( DivX, DivY, DivWidth, DivHeight);
triangle( playSymbolDivX1,playSymbolDivY2, playSymbolDivX3, playSymbolDivY4,playSymbolDivX5, playSymbolDivY6 );
