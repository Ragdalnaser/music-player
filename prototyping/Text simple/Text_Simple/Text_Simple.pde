/* Text, Simple ... Hardcoded
 */
//
// Display
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;
//
// Population: DIVs
int numberOfButtons = 5;  // Half a button on either side as space, centre button is Play
int widthOfButtons = appWidth/numberOfButtons;
int beginningButtonSpace = widthOfButton;
float quitX = appWidth - appHeight* 0.5;
float quitY = 0;
float quitWidth = appHeight* 0.5;
float quitHeight = appHeight* 0.5;
float songTitleDivX = beginningButtonSpace;
float songTitleDivY= appHeight* 1.5;
float songTitleDivWidth = appWidth * 6  - beginningButtonSpace* 1.5;
float songTitleDivHeight = appHeight * 1;





//
// DIVs: Image
rect(quitDivx, quitDivY, quitDivWidth, quitDivHeight);
rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);

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
 
 //
 // Fonts from OS
 println ("start of Cansole");// ERROR: in case CONSOLE Memory not enough;
 PFont fontHarrington; //Font Varaible Name, able to have more than one Font
 printlnArray( fontlist );// For listing all possible fonts to choose , then createfont
 //Spelling counts and  and must comapare CONSOLE v Tools / create  font Spelling
 //Tools / create Font / find  font / Do Not press "OK", known  conflict  between LoadFont() and createFont()
 //
 // students  enter all the text from the case study;
 //
 // Fonts from OS
 float fontSize1 = appHeight;// Entire program , algorithm  to have smallest font size
 println (fontSize);
 PFont font ;// Font varible  Name, able  to have more  than one Font
 String  Harrigton = "Harrigton";// Spelling  of the Font  Matters,  see PFont, list() v Create Font  above
 font = createFont( harrigton,  fontSize);
 //
 // Aspect  Ratio for harrigton
 float FontSizeharrigton = 83; // Default  Fontize  for -100%
 float divHeightHarrigton  = SongTitleDivWidth;// key value, value = 6 
 float harrigtonAspectRatio = fontSize / divHeightHarrigton;// #<1;
 float TextAdjustment = 0.9;
fontSize1 = songTitleDivHeight* harrigtonAspectRatio* textAdjustment;
//fontSize2 = songTitleDivHeight* harrigtonAspectRatio* textAdjustment;
//println (fontSize);
 
 //
 // Drawing Test
 color redInk = #208FF; // AP mMinilesson  in bit , 8-bit or byte ( gray scale 255
 
 color whiteInk= # FFFFFF; // grey scale is 255
 color  resetInk  = whiteInk;
 fill(RedInk);// Ink  Hexidecimal copied from the color selector
 // Grey  scale 0-255
 TextAlign( CENTER, CENTER);// Align, X&Y, See processing. org / reference
// Values:[ LEFT|CENTRE|Right]& [Top|CENTER| BUTTOM| BASELINE]
 TextFont( fontSize1); // must include TextSize ()
 TextFont( fontSize2); // must include TextSize ()

 
 Text( title, songTitleDivX, songTitleDivY, songTitleWidth, songTilteDivHeight);
 Text(title,quitX, quitY, qiutDivWidth, quitDivHeight);
 
 
 fill( resetInk);
 //
