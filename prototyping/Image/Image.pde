   /* Aspect Ratio
- Basic Code with While Loop
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
String ImageFolder2 = "Clock";
String ImageFolder = "Table";
String fileExtension = ".Png";
String open = "/";
//
//concentration

// Note, Cut out, See Absolute pathway;\\C:\Users\Student\Documents\GitHub\music-player\dependencies \ Images
// See Relative pathway; Dependancies \ Images
String imageDirectory = UpArow + open + open + open + dependenciesFolder + open + imagefolder + image;
String Pathway1 = ImageDirectory = imageName1 + fileExtension;
String Pathway2 = ImageDircetory =  imageName2 + filExtension;
String Pathway3 = ImageDircetory = ImageName3 + fileExtension;
//println ( pathway);
 //
PImage[] image1 = loadImage(  pathway1 );
PImage []image2 = loadImage( pathway2);
int imageWidth1 = 500;
int imageHeight1 =711;
PImage image3 = loadImage( pathway3);

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
//println( float (imageWidth2)/float(imageHeight2)  );
// Ternary operator for As[pect Rati: Q: greatone v lessone;
float image2AspectRation_LessOne = (imageWidth2 < imagHeight2)? float(imageWidth2) / float(imageHeight2) : float(imageHeight2) / float( imageWidth2
println("Verify Image Aspect Ratio Less than One:", image2AspectRation_LessOne<=1, "\tActual Number:", image2AspectRation_LessOne);
float imageWidthAdjusted2 = imageDivWidth; 
println( "Comparison of imageHeight2 and divHeight:", imageHeight2, imageDivHeight);
float imageHeightAdjusted1 = ( imageWidth2  >= imageDivWidth)?  imageWidthAdjusted2 / image2AspectRation -lessOne : image2WidthAdjusted *  image2AspectRation-LessOne
println("imageHeightAdjusted1", imageHeightAdjusted1);
println("Quesition: is this is too big?","\t\thint  ... reposition image() above rect(div)"  );
// While LOOP: decrease imageWidth to decrease the caculated imageHeight(% decrease within multiplication assignment operator
while( imageHeightAdjusetd1> imageDivHeight) {
  imageWidthAdjusted1*= 0.99;
 imageAdjusted2 = imageWidthAdjusted2/ image2AspectionRation - GreaterOne;//change this
 
//Div: Image
//rect(imageDivX, imageDivY, imageDvWidthAdjusted1, imageDivHeightAdjusted1);
//
// image( image1, 0,0);
image( image2, imageDivX, imageDivY, imageWidthAdjusted2, imageHeightAdjusted1);
//image (image3, 0,0);
