/* Aspect Ratio
- Basic Code and with While Loop
 */
//
//Dispaly
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;
//
String upArow = "..";
String musicplayerFolder = "music-player";
String dependenciesFolder = "dependencies/";
String ImageFolder = "Images/"; 
String ImageName1 = 
//String ImageFolder2 = "Clock";
//String ImageFolder = "Table";
String fileExtension = ".png";
String open = "/";
//
//concatenation
// Note, Cut out, See Absolute pathway;
// See Relative pathway; C:\Users\Student\Documents\GitHub\music-player\dependencies
String imageDirectory = upArow + open + upArow + open  + musicplayerFolder + open + dependenciesFolder + open + ImageFolder + open ;
String Pathway1 = imageDirectory = ImageName1 + fileExtension;
//println ( pathway);
//String Pathway2 = ImageDircetory =  imageName2 + filExtension;
//String Pathway3 = ImageDirectory = ImageName3 + fileExtension;
//println ( pathway);

PImage image1 = loadImage( Pathway1 );
//PImage []image2 = loadImage( pathway2);
//PImage image3 = loadImage( pathway3);
//
//image(image1, 0, 0);
int imageWidth1 = 500;
int imageHeight1 = 711;
//
// Population:Divs
 int numberOfButtons = 5; // Half a button on either side as space, centre button is Play
 int widthOfButtons = appWidth/numberOfButtons;
 int beginningButtonSpace = widthOfButtons;
 float imageDivX = beginningButtonSpace;
 float imageDivY = appHeight*4.5/20;
 float imageDivWidth = appWidth*1/2 - beginningButtonSpace*1.5;
 float imageDivHeight = appHeight*1.5/5; // 1+1.5 =2.5, half of the total height;
 
// Image: Aspect Ratio Algorithm 
//println( float (imageWidth2)/float(imageHeight2)  );
// Ternary operator for As[pect Ratio: Q: greatone v lessone;
float image1AspectRation_GreatOne = (imageWidth1 > imageHeight1)? float(imageWidth1) / float(imageHeight1) : float(imageHeight1) / float( imageWidth1);
println("Verify Image Aspect Ratio Greater than One:", image1AspectRation_GreatOne>=1, "\tActual Number:", image1AspectRation_GreatOne);
float imageWidthAdjusted1 = imageDivWidth; 
println( "Comparison of imageHeight1 and divHeight:", imageHeight1, imageDivHeight);
float imageHeightAdjusted1 = ( imageWidth1  >= imageDivWidth ) ? imageWidthAdjusted1 / image1AspectRation_GreatOne : imageWidthAdjusted1 *  image1AspectRation_GreatOne;
println("imageHeightAdjusted1", imageHeightAdjusted1);
println("Question: is this is too big?","\t\thint ... reposition image() above rect(div)");
// While LOOP: decrease imageWidth to decrease the caculated imageHeight(% decrease within multiplication assignment operator
while (imageHeightAdjusted1 > imageDivHeight ) {
  imageWidthAdjusted1*= 0.99;
  imageHeightAdjusted1 = imageWidthAdjusted1 / image1AspectRation_GreatOne; //CHANGE THIS
}
//Div: Image
rect(imageDivX, imageDivY, imageDivWidth, imageDivHeight);
//
image( image1, imageDivX, imageDivY, imageWidthAdjusted1, imageHeightAdjusted1);
// image( image2, 0, 0);
//image (image3, 0,0);
