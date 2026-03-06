/* DIVs 2D rectangles test
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

float MusicbuttonDivX6 = appWidth  * 6.5 / paperWidth;
float MusicbuttonDivY6 = appHeight * 11.5 / paperHeight; 
float MusicbuttonDivWidth6 = appWidth * 1 / paperWidth;
float MusicbuttonDivHeight6 = appHeight * 0.8 / paperHeight;

//rect( DivX, DivY, DivWidth, DivHeight);
rect(songTitleDivX,songTitleDivY, songTitleDivWidth, songTitleDivHeight);
rect(ImageDivX, ImageDivY, ImageDivWidth, ImageDivHeight);
rect(QuickbuttonDivX, QuickbuttonDivY, QuickbuttonDivWidth, QuickbuttonDivHeight);
//rect(outerboxDivX, outerboxDivY, outerboxDivWidth, outerboxDivHeight);
rect(MusicbuttonDivX1, MusicbuttonDivY1, MusicbuttonDivWidth1, MusicbuttonDivHeight1);
rect(MusicbuttonDivX2, MusicbuttonDivY2, MusicbuttonDivWidth2, MusicbuttonDivHeight2);
rect(MusicbuttonDivX3, MusicbuttonDivY3, MusicbuttonDivWidth3, MusicbuttonDivHeight3);
rect(MusicbuttonDivX4, MusicbuttonDivY4, MusicbuttonDivWidth4, MusicbuttonDivHeight4);
rect(MusicbuttonDivX5, MusicbuttonDivY5, MusicbuttonDivWidth5, MusicbuttonDivHeight5);
rect(MusicbuttonDivX6, MusicbuttonDivY6, MusicbuttonDivWidth6, MusicbuttonDivHeight6);
