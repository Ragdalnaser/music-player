


/* Aspect Ratio: any image
 */
//
//Display
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;
//
String upArow = "..";
String dependenciesFolder = "dependencies";
String imagesFolder = "Images";
String imageName1 = "Taylor_Swift_at_the_2023_MTV_Video_Music_Awards_(3)";
String imageName2 = "Clock";
String imageName3 = "Table";
String fileExtension1 = ".png";
String open = "/";
//
//
//Concatenation
//Note, Cut Out, See Absolute Pathway:
//See Relative Pathway: Dependencies\Images
String imageDirectory = upArow + open + upArow + open + upArow + open + upArow + open + dependenciesFolder + open + imagesFolder + open;
String pathway1 = imageDirectory + imageName1 + fileExtension1;
//String pathway2 = imageDirectory + imageName2 + fileExtension;
//String pathway3 = imageDirectory + imageName3 + fileExtension;
//println(pathway);
//
PImage image1 = loadImage( pathway1 );
//PImage image2 = loadImage( pathway2 );
int imageDivWidth2 = 679;
int imageDivHeight2 = 679;
//PImage image3 = loadImage( pathway3 );
//
//Population: DIVs
int numberOfButtons = 5; //Half a button on either side as space, Center Button is Play
int widthOfButton = appWidth/numberOfButtons;
int beginningButtonSpace = widthOfButton;
float imageDivX = beginningButtonSpace;
float imageDivY= appHeight * 4.1 / 13;
float imageDivWidth = appWidth *  7 / 11  - beginningButtonSpace*1.5;
float imageDivHeight = appHeight * 6.5 / 13;
  //
  //Image: Aspect Ratio Algorithm for any Image
  float image2AspectRation_GreatOne = ( imageDivWidth2 > imageDivHeight2 ) ? float(imageDivWidth2) / float(imageDivHeight2) : float(imageDivHeight2) / float(imageDivWidth2 ) ;
float imageDivWidthAdjusted2 = imageDivWidth;
float imageDivHeightAdjusted1;
if ( imageDivWidth2 >= imageDivWidth ) {
  imageDivHeightAdjusted1 = imageDivWidthAdjusted2 / image2AspectRation_GreatOne;
  while ( imageDivHeightAdjusted1 > imageDivHeight ) {
    imageDivWidthAdjusted2 *= 0.99;
    imageDivHeightAdjusted1 = imageDivWidthAdjusted2 / image2AspectRation_GreatOne ; //CHANGE THIS
  }//End WHILE
} else {
  imageDivHeightAdjusted1 = imageDivWidthAdjusted2 * image2AspectRation_GreatOne;
  while ( imageDivHeightAdjusted1 > imageDivHeight ) {
    imageDivWidthAdjusted2 *= 0.99;
    imageDivHeightAdjusted1 = imageDivWidthAdjusted2 * image2AspectRation_GreatOne ; //CHANGE THIS
  }//End WHILE
}


//println( float(imageWidth2)/ float(imageHeight2) );
//Ternary Operator for As[pect Ratio: Q: greatOne v lessOne

println("Verify Image Aspect Ratio Greater than One:", image2AspectRation_GreatOne>=1, "\tActual Number:", image2AspectRation_GreatOne);

println("Comparison of imageHeight2 and divHeight:", imageDivHeight2, imageDivHeight);

println("imageDivHeightAdjusted1", imageDivHeightAdjusted1);
println("Question: is this too big?", "\t\thint ... reposition image() above rect(div)");
// WHILE LOOP: decrease imageWidth to decrease the calculated imageHeight (% decrease within mutliplication assignment operator)

//
//CAUTION: might need to reposition rect(div) with image()
//image(image2, imageDivX, imageDivY, imageWidthAdjusted2, imageHeightAdjusted1);
//DIV: Image
rect(imageDivX, imageDivY, imageDivWidth, imageDivHeight);
//
//image(image1, 0, 0);
image(image1, imageDivX, imageDivY, imageDivWidthAdjusted2, imageDivHeightAdjusted1);
//image(image3, 0, 0);
