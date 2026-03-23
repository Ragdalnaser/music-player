/* Adpect Ratio
*/
//
//Dispaly
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;
//
String upArow = "..";
String dependanciesFolder = "dependences/";
String ImagesFolder = "Images /"; 
String ImageName1 = "Taylor_Swift_at_the_2023_MTV_Video_Music_Awards_(3)";
String fileExtension = ".Png";
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
 float imageDivHeight = appHeight*1.5/5;// 1+1.5 =2.5, half of the total height;
 
// Image: Aspect Ratio Algorithm 
println( float (imageWidth1)/float(imageHeight1)  );
// Ternary operator for As[pect Rati: Q: greatone v lessone;
float image1AspectRation_LessOne = (imageWidth1 < imagHeight1)? float(imageWidth1) / float(imageHeight1) : float(imageHeight1);
println ("verify Image Aspect Ratio Less than One:", image1AspectionRation - lessOnr>=1, "\tactual Number:", image1AspectRatio-LessOne);
float imageWidthAdjusted1 = imageDivWidth; 
float imageHeightAdjusted1 = ( imageWidth1  >= imageDivWidth)?  imageWidthAdjusted1 / imageAspecvtRation - lessOne : imageWidthAdjusted1;
println("imageHeightAdjusted1", imageHeightAdjusted1);
println("Quesition: is this is too big?","\t\thint  ... reposition image() above rect(div)"  );
// While LOOP: decrease imageWidth to decrease the caculated imageHeight(% decrease within multiplication assignment operator
while( imageHeightAdjusetd1> imageDivHeight) {
  imageWidthAdjusted1*= 0.99;
  imageAdjusted1 = imageWidthAdjusted1/ imageAspectionRation - GreaterOne;//change this
//Div: Image
//rect(imageDivX, imageDivY, imageDvWidthAdjusted1, imageDivHeightAdjusted1);
//
//image (image1, 0,0);
