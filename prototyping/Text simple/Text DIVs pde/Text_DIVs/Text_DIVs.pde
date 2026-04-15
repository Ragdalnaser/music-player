/* Text, Simple ... Hardcoded;
*/
//
//
// Display
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;
//
// Population: DIVs
int numberOfButtons = 5;  // Half a button on either side as space, centre button is Play
int widthOfButton = appWidth/numberOfButtons;
int beginningButtonSpace = widthOfButton;
float quitX = appWidth - appHeight*0.5/20;
float quitY = 0;
float quitWidth = appHeight* 0.5/20;
float quitHeight = appHeight* 0.5/20;
float songTitleDivX = beginningButtonSpace;
float songTitleDivY= appHeight* 1.5/20;
float songTitleDivWidth = appWidth * 6  - beginningButtonSpace* 1.5/20;
float songTitleDivHeight = appHeight * 1/10;
float messageDIV_X = appWidth*1/2 + beginningButtonSpace*1/2;
float messageDIV_Y = appHeight*1.5/20;
float messageDIV_Width = appWidth*1/2 - beginningButtonSpace*1.5;
float messageDIV_Height = appHeight*9/20;


//
// DIVs: Image
rect(quitX, quitY, quitWidth, quitHeight);
rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
rect(messageDIV_X, messageDIV_Y, messageDIV_Width, messageDIV_Height);

//
//Strings, Text, Literal
String Title = " Thunder";
/* Full String longer than Rectangle, "Thunder" I changed 2D Size."
 - divHeight must fit the font size or text is not shown (Advanced, error check includes %-decrease)
 - Fonts includes the in WHITE SPACE around the foreground "coloured ink"
 - divWidth must include the font size
 - if font is too big, wrap around happens
 - OR full string is not drawn
 */
 
 /* Fonts from OS
 println ("start of Cansole");// ERROR: in case CONSOLE Memory not enough;
 String[] fontlist = PFont.List(); // TO list all fonts to choose, then createFont
 printlnArray( fontlist );// For listing all possible fonts to choose , then createfont
 //Spelling counts and  and must comapare CONSOLE v Tools / create Font / create  font Spelling
 //Tools / create Font / find  font / Do Not press "OK", known  conflict  between LoadFont() and createFont()
 */
 // students  enter all the text from the case study
 //
 // Fonts from OS
float fontSize1 = appHeight; //Entire Program, Algorithm to have smallest font size
float fontSize2 = appHeight; //Entire Program, Algorithm to have smallest font size
float fontSize3 = appHeight; //Entire Program, Algorithm to have smallest font size
//println( fontSize );
PFont font; //Font Varaible Name, able to have more than one Font
String harrington = "Harrington"; //Spelling of the Font Matters, see PFont.list() v Create Font above
font = createFont(harrington, fontSize1);

 // Aspect  Ratio for harrigton
 float FontSizeharrigton = 83; // Default  Fontize  for -100%
 float DivHeightHarrigton  = songTitleDivWidth;// key value, value = 6 
 float harrigtonAspectRatio = fontSize1 / DivHeightHarrigton;// #<1;
 float TextAdjustment = 0.9;
fontSize1 = songTitleDivHeight* harrigtonAspectRatio* TextAdjustment;
//fontSize2 = songTitleDivHeight* harrigtonAspectRatio* textAdjustment;
//println (fontSize);
 
 //
 // Drawing Test
 color RedInk = #E82A2A; // AP Minilesson  in bit , 8-bit or byte ( gray scale 255
 color whiteInk=   #FFFFFF; // grey scale is 255
 color  resetInk  = whiteInk;
 fill(RedInk);// Ink  Hexidecimal copied from the color selector
 // Grey  scale 0-255
 TextFont(font, fontSize1);
 Text( title, songTitleDivX, songTitleDivY, songTitleWidth, songTilteDivHeight);
 TextAlign( CENTER, Baseline);// Align, X&Y, See processing. org / reference
// Values:[ LEFT|CENTRE|Right]& [Top|CENTER| BUTTOM| BASELINE];
TextFont(font, fontSize); //must include textSize() before text() & textWidth()
text( title, songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight );
text( title, quitX, quitY, quitWidth, quitHeight );
text( title, messageDIV_X, messageDIV_Y, messageDIV_Width, messageDIV_Height );
fill(resetInk);
//
