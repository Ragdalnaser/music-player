/* Text, Simple ... Hardcoded;
*/
//
// Display
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;
//
// Population: DIVs
  int numberOfButtons = 5; //Half a button on either side as space, Center Button is Play
  int widthOfButton = appWidth/numberOfButtons;
  int beginningButtonSpace = widthOfButton;
  //

  //
  float songTitleDivX1= appWidth * 1.5 / 11;
  float songTitleDivY2= appHeight * 1.5 / 13;
  float songTitleDivWidth3 = appWidth * 3 / 11 ;
  float songTitleDivHeight4 = appHeight * 1 / 13 ;
  float QuickbuttonDivX1 = appWidth * 0.0  / 11 ;
  float QuickbuttonDivY2 = appHeight  * 0.0 / 13 ;
  float QuickbuttonDivWidth3 = appWidth  * 0.5  / 11 ;
  float QuickbuttonDivHeight4 = appHeight * 0.4 / 12;
  float messageDIV_X = appWidth*5/8 + beginningButtonSpace*13/16;
  float messageDIV_Y = songTitleDivY;
  float messageDIV_Width = appWidth*1/2 - beginningButtonSpace*1.5;
  float messageDIV_Height = appHeight*9/20;
  //
  // DIVs
  rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
  //rect(QuickbuttonDivX, QuickbuttonDivY, QuickbuttonDivWidth, QuickbuttonDivHeight);
  rect( messageDIV_X, messageDIV_Y, messageDIV_Width, messageDIV_Height);

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
 float fontSize = appHeight;// Entire program , algorithm to have smallest font size
 println (fontSize);
 PFont font ;// Font varible  Name, able  to have more  than one Font
 String  harrigton = "Harrigton";// Spelling  of the Font  Matters,  see PFont, list() v Create Font  above
 font = createFont( harrigton,  fontSize);
 //
 // Aspect  Ratio for harrigton
 float FontSizeharrigton = 83; // Default  Fontize  for -100%
 float divHeightHarrigton  = songTitleDivHeight;// key value, value = 6 
 float harrigtonAspectRatio = fontSize / divHeightHarrigton;// #<1;
 float TextAdjustment = 0.9;
fontSize = songTitleDivHeight* harrigtonAspectRatio* TextAdjustment;
//fontSize2 = songTitleDivHeight* harrigtonAspectRatio* textAdjustment;
//println (fontSize);
 
 //
 // Drawing Test
 color RedInk = #E82A2A; // AP mMinilesson  in bit , 8-bit or byte ( gray scale 255
 color whiteInk= #FFFFFF; // grey scale is 255
 color  resetInk  = whiteInk;
 fill(RedInk);// Ink  Hexidecimal copied from the color selector
 // Grey  scale 0-255
 textFont(font, fontSize);
 text( Title, songTitleDivX, songTitleDivY, songTitleDivWidth, songTilteDivHeight);
 TextAlign( CENTER, Baseline);// Align, X&Y, See processing. org / reference
// Values:[ LEFT|CENTRE|Right]& [Top|CENTER| BUTTOM| BASELINE];
textFont(font, fontSize); //must include textSize() before text() & textWidth()
text( title, songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight );
text( title, quitX, quitY, quitWidth, quitHeight );
text( title, messageDIV_X, messageDIV_Y, messageDIV_Width, messageDIV_Height );
fill(resetInk);
//
