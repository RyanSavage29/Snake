import controlP5.*;

ControlP5 gui;
controlP5.Button toMain, toPlay, toCredits, toScores, toQuit, playLevel, backToMain, resume, restart, selectLeft, selectRight, speed1, speed2, speed3;

PImage[] backgroundImage, buttonImage;

PFont scoresFont, gameFont, loadFont;

/*
playLevel, resume, restart, selectRight, selectLeft, speed1, speed2, and speed3 all will have different effects other than menus

Main Menu \ \
Play \
Credits \
High Score \
Quit \ \ \
Play Level \
Back (to Main Menu) \ \ \
Resume \
Restart \
*/

boolean mainMenu = true;
boolean levelSelectMenu, gameStart, pauseMenu, restartMenu, highScores, creditsMenu, game = false;

void createFonts()
{
  scoresFont = createFont("Font/syncopate-regular.ttf", 32);
  gameFont = createFont("Font/FinkHeavy.ttf", 24);
}

void loadBackground()
{
  backgroundImage = new PImage[8];
  
  backgroundImage[0] = loadImage("Background/mainmenu.jpg");
  backgroundImage[1] = loadImage("Background/start.jpg");
  backgroundImage[2] = loadImage("Background/totoro.jpg");
  backgroundImage[3] = loadImage("Background/totoro2.jpg");
  backgroundImage[4] = loadImage("Background/guildwars.jpg");
  backgroundImage[5] = loadImage("Background/guildwars2.jpg");
  backgroundImage[6] = loadImage("Background/death.jpg");
  backgroundImage[7] = loadImage("Background/sick.jpg");
}

void loadButtonImages()
{
  
}

void mainMenu()
{
  background(backgroundImage[0]);
  
  if (clean)
  {
    background(backgroundImage[7]);
  }
  
  toPlay
    .setPosition(width/4 - 150, 650)
    .setSize(300, 75)
    .show()
    .setOn();
    
  toCredits
    .setPosition(width/2 + 50, 650)
    .setSize(300, 75)
    .show()
    .setOn();
    
  toScores
    .setPosition(width/4 - 150, 750)
    .setSize(300, 75)
    .show()
    .setOn();
    
  toQuit
    .setPosition(width/2 + 50, 750)
    .setSize(300, 75)
    .show()
    .setOn();
}

void levelSelectMenu()
{
  playLevel
    .setPosition(width/2 + 150, 100)
    .setSize(200, 75)
    .show()
    .setOn();
    
    backToMain
    .setPosition(width/4 - 175, 100)
    .setSize(100, 75)
    .show()
    .setOn();
    
  if (levelCheck == 2)
  {
    background(backgroundImage[4]);
    
    selectLeft
      .setPosition(50, 450)
      .setSize(50, 75)
      .show()
      .setOn();
    
    selectRight
      .setPosition(800, 450)
      .setSize(50, 75)
      .show()
      .setOn();
  }
    
  if (levelCheck == 1)
  {
    background(backgroundImage[2]);
    
    selectRight
      .setPosition(800, 450)
      .setSize(50, 75)
      .show()
      .setOn();
  }
  
  if (levelCheck == 3)
  {
    background(backgroundImage[1]);
    
    selectLeft
      .setPosition(50, 450)
      .setSize(50, 75)
      .show()
      .setOn();
  }
  
  speed1
    .setPosition(width/5 - 50, 750)
    .setSize(100, 100)
    .show()
    .setOn();
    
  speed2
    .setPosition(width/2 - 50, 750)
    .setSize(100, 100)
    .show()
    .setOn();
    
  speed3
    .setPosition(width - (width/5) - 50, 750)
    .setSize(100, 100)
    .show()
    .setOn();
    
  textFont(gameFont);
  textSize(75);
  for (int x = -1; x < 2; x++)
  {
    for (int y = -1; y < 2; y++)
    {
      fill(0, 0, 0);
      text("Select a Speed", (width/2 - 225) + x, (height - 175) + y);
    }
  }
  fill(255, 255, 255);
  text("Select a Speed", width/2 - 225, height - 175);
}

void gameStart()
{
  if (levelCheck == 1)
  {
    background(backgroundImage[3]);
  }
  else if (levelCheck == 2)
  {
    background(backgroundImage[5]);
  }
  else if (levelCheck == 3)
  {
    background(backgroundImage[7]);
  }
  
  resetMainMenuMusic();
  textFont(gameFont);
  textSize(40);
  fill(255, 255, 255);
  text("Press an arrow key to begin playing!", width/5 - 50, height - 100);
}

void pauseMenu()
{
  resume
    .setPosition(width/2 - 150, 250)
    .setSize(300, 75)
    .show()
    .setOn();
    
  toMain
    .setPosition(width/2 - 150, 500)
    .setSize(300, 75)
    .show()
    .setOn();
    
  toQuit
    .setPosition(width/2 - 150, 750)
    .setSize(300, 75)
    .show()
    .setOn();
}

void restartMenu()
{
  background(backgroundImage[6]);
  
  restart
    .setPosition(150 - 75, 800)
    .setSize(150, 75)
    .show()
    .setOn();
    
  toMain
    .setPosition(450 - 75, 800)
    .setSize(150, 75)
    .show()
    .setOn();
    
  toQuit
    .setPosition(750 - 75, 800)
    .setSize(150, 75)
    .show()
    .setOn();
}

//Sets and Turns On the Button to Return to Main Menu
//Prints the High Scores onto the Screen
void highScores()
{
  //background(backgroundImage[1]);
  
  backToMain
    .setPosition(width/2 - 150, 750)
    .setSize(300, 75)
    .show()
    .setOn();
    
    printHighScores();
}

void creditsMenu()
{
  backToMain
    .setPosition(width/2 - 150, 450)
    .setSize(300, 75)
    .show()
    .setOn();
}
 
void setMenus()
{
  gui = new ControlP5(this);
  
  createMenus();
  createLevelSelect();
}

void controlEvent(ControlEvent theEvent) 
{
  switch (theEvent.getId())
  {
   //To Main Menu
   case 1:
   resetMenus();
   mainMenu = true;
   if (!mainMusicIsPlaying)
   {
     mainMusic.loop();
     mainMusicIsPlaying = true;
   }
   break;
   
   //To Level Select
   case 2:
   resetMenus();
   levelSelectMenu = true;
   levelCheck = 1;
   break;
   
   //To Game Start
   case 3:
   resetMenus();
   gameStart = true;
   break;
   
   //To Pause
   case 4:
   resetMenus();
   pauseMenu = true;
   break;
   
   //To Restart
   case 5:
   resetMenus();
   restartMenu = true;
   break;
   
   //To High Scores
   case 6:
   resetMenus();
   highScores = true;
   break;
   
   //To Credits
   case 7:
   resetMenus();
   resetMainMenuMusic();
   creditsMenu = true;
   creditsMusic.loop();
   break;
   
   //Quit
   case 8:
   exit();
   break;
   
   //Resume
   case 9:
   
   break;
   
   //Restart
   case 10:
   resetMenus();
   currentLevel();
   gameStart = true;
   specialCount = 0;
   setInitialFood(int(random(29)), int(random(29)));
   break;
   
   //Check Levels to the Left
   case 11:
   levelCheck -= 1;
   break;
   
   //Check Levels to the Right
   case 12:
   levelCheck += 1;
   break;
   
   //Slowest Speed
   case 13:
   speed = 5;
   break;
   
   //Middle Speed
   case 14:
   speed = 7;
   break;
   
   //Fastest Speed
   case 15:
   speed = 10;
   break;
   
   //Play Level
   case 16:
   resetMenus();
   println(levelCheck);
   currentLevel();
   println(levelCheck);
   gameStart = true;
   specialCount = 0;
   setInitialFood(int(random(29)), int(random(29)));
   break;
  }
 hideMenus();
}

void createMenus()
{
  toMain = gui.addButton("Main Menu")
    .hide()
    .setOff()
    .setId(1)
    .activateBy(ControlP5.RELEASE);
    
  toPlay = gui.addButton("Play")
    .hide()
    .setOff()
    .setId(2)
    .activateBy(ControlP5.RELEASE);

  toCredits = gui.addButton("High Scores")
    .hide()
    .setOff()
    .setId(6)
    .activateBy(ControlP5.RELEASE);
    
  toScores = gui.addButton("Credits")
    .hide()
    .setOff()
    .setId(7)
    .activateBy(ControlP5.RELEASE);
    
  toQuit = gui.addButton("Quit")
    .hide()
    .setOff()
    .setId(8)
    .activateBy(ControlP5.RELEASE);
    
  backToMain = gui.addButton("Back")
    .hide()
    .setOff()
    .setId(1)
    .activateBy(ControlP5.RELEASE);
    
  resume = gui.addButton("Resume")
    .hide()
    .setOff()
    .setId(9)
    .activateBy(ControlP5.RELEASE);
      
  restart = gui.addButton("Restart")
    .hide()
    .setOff()
    .setId(10)
    .activateBy(ControlP5.RELEASE);
}

void createLevelSelect()
{
  playLevel = gui.addButton("Play Level")
    .hide()
    .setOff()
    .setId(16)
    .activateBy(ControlP5.RELEASE);
  
  selectLeft = gui.addButton("")
    .hide()
    .setOff()
    .setId(11)
    .activateBy(ControlP5.RELEASE);
  
  selectRight = gui.addButton(" ")
    .hide()
    .setOff()
    .setId(12)
    .activateBy(ControlP5.RELEASE);
  
  speed1 = gui.addButton("1")
    .hide()
    .setOff()
    .setId(13)
    .activateBy(ControlP5.RELEASE);
  
  speed2 = gui.addButton("2")
    .hide()
    .setOff()
    .setId(14)
    .activateBy(ControlP5.RELEASE);
  
  speed3 = gui.addButton("3")
    .hide()
    .setOff()
    .setId(15)
    .activateBy(ControlP5.RELEASE);
}

void hideMenus()
{
  toMain
    .hide()
    .setOff();
    
  toPlay
    .hide()
    .setOff();
  
  toCredits
    .hide()
    .setOff();
    
  toScores
    .hide()
    .setOff();
    
  toQuit
    .hide()
    .setOff();
    
  playLevel
    .hide()
    .setOff();
    
  backToMain
    .hide()
    .setOff();
    
  resume
    .hide()
    .setOff();
    
  restart
    .hide()
    .setOff();
    
  selectLeft
    .hide()
    .setOff();
    
  selectRight
    .hide()
    .setOff();
    
  speed1
    .hide()
    .setOff();
    
  speed2
    .hide()
    .setOff();
    
  speed3
    .hide()
    .setOff();
}

void resetMenus()
{
  mainMenu = false;
  levelSelectMenu = false;
  gameStart = false;
  pauseMenu = false;
  restartMenu = false;
  highScores = false;
  creditsMenu = false;
  game = false;
  
  resetMusic();
}