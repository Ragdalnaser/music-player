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
String dependanciesFolder = "dependences/";
String ImagesFolder = "Images/"; 
String ImageName1 = "Taylor_Swift_at_the_2023_MTV_Video_Music_Awards_(3)";
//String ImageFolder2 = "Clock";
//String ImageFolder = "Table";
String fileExtension = ".Png";
String open = "/";
//
//concentration
// Note, Cut out, See Absolute pathway;
// See Relative pathway; Dependancies\Images
String imageDirectory = UpArow + open + open + open + dependenciesFolder + open + imagesfolder + image;
String Pathway1 = ImageDirectory = imageName1 + fileExtension;
//String Pathway2 = ImageDircetory =  imageName2 + filExtension;
//String Pathway3 = ImageDircetory = ImageName3 + fileExtension;
//println ( pathway);
 //
PImage image1 = loadImage( pathway1 );
//PImage []image2 = loadImage( pathway2);
//PImage image3 = loadImage( pathway3);
//
//image(image1, 0, 0);
int imageWidth2 = 500;
int imageHeight2 = 860;
//
// Population:Divs
 int numberOfButtons = 13; // Half a button on either side as space, centre button is Play
 int widthOfButtons = appWidth/numberOfButtons;
 int beginningButtonSpace = widthOfButtons;
 float imageDivX = beginningButtonSpace;
 float imageDivY = appHeight*4.5/20;
 float imageDivWidth = appWidth*1/2 - beginningButtonSpace*1.5;
 float imageDivHeight = appHeight*1.5/5; // 1+1.5 =2.5, half of the total height;
 
// Image: Aspect Ratio Algorithm 
//println( float (imageWidth2)/float(imageHeight2)  );
// Ternary operator for As[pect Rati: Q: greatone v lessone;
float image2AspectRation_GreatOne = (imageWidth2 > imagHeight2)? float(imageWidth2) / float(imageHeight2) : float(imageHeight2) / float( imageWidth2);
println("Verify Image Aspect Ratio Greater than One:", image2AspectRation_GreatOne>=1, "\tActual Number:", image2AspectRation_GreatOne);
float imageWidthAdjusted2 = imageDivWidth; 
println( "Comparison of imageHeight2 and divHeight:", imageHeight2, imageDivHeight);
float imageHeightAdjusted1 = ( imageWidth2  >= imageDivWidth ) ? imageWidthAdjusted2 / image2AspectRation_GreatOne : imageWidthAdjusted2 *  image2AspectRation_GreatOne;
println("imageHeightAdjusted1", imageHeightAdjusted1);
println("Question: is this is too big?","\t\thint ... reposition image() above rect(div)"  );
// While LOOP: decrease imageWidth to decrease the caculated imageHeight(% decrease within multiplication assignment operator
while ( imageHeightAdjusetd1 > imageDivHeight ) {
  imageWidthAdjusted2*= 0.99;
  imageAdjusted1 = imageWidthAdjusted2 / image2AspectRation_GreatOne; //CHANGE THIS
//Div: Image
rect(imageDivX, imageDivY, imageDivWidth, imageDivHeight);
//
image( image1, imageDivX, imageDivY, imageWidthAdjusted2, imageHeightAdjusted1);
// image( image2, 0, 0);
//image (image3, 0,0);
