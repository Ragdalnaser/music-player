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
int numberOfButtons = 5; //Half a button on either side as space, Center Button is Play
int widthOfButton = appWidth/numberOfButtons;
int beginningButtonSpace = widthOfButton;
//
float paperWidth = 11.0;
float paperHeight = 13.0 ;
//
float songTitleDivX= appWidth * 1.5 / 11;
float songTitleDivY= appHeight * 1.5 / 13;
float songTitleDivWidth = appWidth * 3 / 11 ;
float songTitleDivHeight = appHeight * 1 / 13 ;
float QuickbuttonDivX = appWidth * 0.0  / 11 ;
float QuickbuttonDivY = appHeight  * 0.0 / 13 ;
float QuickbuttonDivWidth = appWidth  * 0.5  / 11 ;
float QuickbuttonDivHeight = appHeight * 0.4 / 13;
float messageDIV_X = appWidth*1/2 + beginningButtonSpace*1/2;
float messageDIV_Y = appHeight*4/20;
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
float fontSize1 = songTitleDivHeight; //Entire Program, Algorithm to have smallest font size
float fontSize2 = appHeight; //Entire Program, Algorithm to have smallest font size
float fontSize3 = appHeight; //Entire Program, Algorithm to have smallest font size
//println( fontSize );
PFont font; //font Varaible Name, able to have more than one Font
String harrington = "Harrington"; //Spelling of the Font Matters, see PFont.list() v Create Font above
font = createFont(harrington, fontSize1);

//println (fontSize);

//
// Drawing Test
color RedInk = #E82A2A; // AP Minilesson  in bit , 8-bit or byte ( gray scale 255
color whiteInk=   #FFFFFF; // grey scale is 255
color  resetInk  = whiteInk;
fill(RedInk);// Ink  Hexidecimal copied from the color selector
// Grey scale 0-255
textFont(font, fontSize1);
//text( Title, songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
textAlign( CENTER, BASELINE);// Align, X&Y, See processing. org / reference
// Values:[ LEFT|CENTRE|Right]& [Top|CENTER| BUTTOM| BASELINE];
textFont(font, fontSize1); //must include textSize() before text() & textWidth()
//Note: drawing text after height dimension solved
//WHILE solves length dimension
//Additional docing required to adjust consistent text size for meaning in app
float constantDecrease = 0.99;
int iWhile=0;
textAlign (LEFT, CENTER);
while (textWidth(Title) > songTitleDivWidth) {
  //println("While #1"); //Demon Infinite LOOP
  iWhile++;
  if ( iWhile>1000 ) {
    println("Infninte WHILE Loop");
    exit();
  }
  fontSize1 *= constantDecrease;
  textFont(font, fontSize1);
}
text( Title, songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight );
textFont(font, fontSize2); //must include textSize() before text() & textWidth()
iWhile=0;
while (textWidth(Title) > messageDIV_Width) {
  //println("While #1"); //Demon Infinite LOOP
  iWhile++;
  if ( iWhile>1000 ) {
    println("Infninte WHILE Loop");
    exit();
  }
  fontSize2 *= constantDecrease;
  textFont(font, fontSize2);
}
text( Title, messageDIV_X, messageDIV_Y, messageDIV_Width, messageDIV_Height );
textFont(font, fontSize3); //must include textSize() before text() & textWidth()
iWhile=0;
while (textWidth(Title) > QuickbuttonDivWidth) {
  //println("While #1"); //Demon Infinite LOOP
  iWhile++;
  if ( iWhile>1000 ) {
    println("Infninte WHILE Loop");
    exit();
  }
  fontSize3 *= constantDecrease;
  textFont(font, fontSize3);
}
text( Title, QuickbuttonDivX, QuickbuttonDivY, QuickbuttonDivWidth, QuickbuttonDivHeight );
fill(resetInk);
//
