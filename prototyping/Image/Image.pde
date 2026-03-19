/* Aspect Ratio
*/
//
//Dispaly
fullScreen();
//

String upArow = "..";
String dependanciesFolder = "Dependences/";
String imagesFolder = "Images /"; 
String ImageName1 = "Taylor_Swift_at_the_2023_MTV_Video_Music_Awards_(3)";
String fileExtension = ".Pgn";
String open = "/";
//
//concentration

// Note, Cut out, See Absolute pathway;\\C:\Users\Student\Documents\GitHub\music-player\dependencies \ Images
// See Relative pathway; Dependancies \ Images
String imageDirectory = UpArow + open + open + open + dependenciesFolder + open + imagefolder + image;
String Pathway1 = ImageDirectory = imageName1 + fileExtension;
//println ( pathway);
 //
PImage[] image1 = loadImage(  pathway1 );
int imageWidth1 = 500;
int imageHeight1 =711;

//
// Population:Divs
 int NumberOfButtons = 5; // HAlf a button on either side as space, centre button is Play
 int WidthOfButtons = appWidth/numberOfButtons;
 int beginigingButtonspace = widthOfButtons;
 float imageDivX = begiiningButtonSpace;
 float imageDivY = appHeight*4.1;
 float imageDivWidth = appWidth *1.5; - beginingButtonspace;
 float imageDivHeight = appHeight*1.5/5;// 1+1.5 =2.5, half of the total height
 
// Image: Aspect Ratio Algorithm 
println( float (imageWidth1)/float(imageHeight1)  );
// Ternary operator for As[pect Rati: Q: greatone v lessone;
float image1AspectRation-LessOne = (imageWidth1  )? float(imageWidth1) / float(imageHeight1) : float(imageHeight1);
println (image1AspectRation -lessOne);
float imageWidthAdjusted = imageDivWidth; 
float imageHeightAdjusted1 = ( imageWidth1  = imageDivWidth)?  imageWidthAdjusted1 / imageAspecvtRation - lessOne : imageWidthAdjusted1

//Div: Image
rect(imageDivX, imageDivY, imageDvWidthAdjusted1, imageDivHeightAdjusted1);
//
image (image1, 0,0);
