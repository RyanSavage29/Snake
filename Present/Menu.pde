import controlP5.*;

ControlP5 gui;
controlP5.Button playMain, credits, highScore, quitMain,                         //Main Menu
                 selectRight, selectLeft, speed1, speed2, playLevel, backLevel,  //Level Select
                 resume, quitPause,                                              //Pause
                 playRestart, quitRestart,                                       //Restart
                 backScore,                                                      //High Scores
                 backCredits;                                                    //Credits

boolean mainMenu = true;
boolean levelSelectMenu, gameStart, pauseMenu, restartMenu, highScores, creditsMenu = false;

void mainMenu()
{
  playMain
    .show()
    .setOn();
    
  highScore
    .show()
    .setOn();
  
  credits
    .show()
    .setOn();
    
  quitMain
    .show()
    .setOn();
}

void levelSelectMenu()
{
  /*
  selectRight
    .show()
    .setOn();
    
  selectLeft
    .show()
    .setOn();
    
  speed1
    .show()
    .setOn();
    
  speed2
    .show()
    .setOn();
    
  playLevel
    .show()
    .setOn();
    
  backLevel
    .show()
    .setOn();
    */
}

void gameStart()
{
  
}

void pauseMenu()
{
  
}

void restartMenu()
{
  
}

void highScores()
{
  backScore
    .show()
    .setOn();
}

void creditsMenu()
{
  backCredits
    .show()
    .setOn();
}
 
void setMenus()
{
  gui = new ControlP5(this);
  
  createMainMenu();
  createLevelSelect();
  createHighScores();
  createCredits();
  createPause();
}

void controlEvent(ControlEvent theEvent) 
{
  switch (theEvent.getId())
  {
   ///Main Menu to Level Select
   case 1:
   mainMenu = false;
   levelSelectMenu = true;
   break;
   
   //Main Menu to High Scores
   case 2:
   mainMenu = false;
   highScores = true;
   break;
   
   //Main Menu to Credits
   case 3:
   mainMenu = false;
   creditsMenu = true;
   break;
   
   //Main Menu to Quit
   case 4:
   exit();
   break;
   
   //Switch to a Different Level on the Left
   case 5:
   
   break;
   
   //Swith to a Different Level on the Right
   case 6:
   
   break;
   
   //Change to Slowest Speed
   case 7:

   break;
   
   //Change to Fastest Speed
   case 8:

   break;
   
   //Switch from Level Select to Game Start
   case 9:
   
   break;
   
   //Switch from Level Select to Main Menu
   case 10:
   
   break;
   
   //Switch from Credits to Main Menu
   case 11:
   
   break;
   
   //Switch from High Scores to Main Menu
   case 12:
   
   break;
   
   //
   case 13:
   
   break;
   
   //
   case 14:
   
   break;
   
   //Switch from High Scores to Main Menu
   case 15:
   highScores = false;
   mainMenu = true;
   break;
   
   //Switch from Credits to Main Menu
   case 16:
   creditsMenu = false;
   mainMenu = true;
   break;
  }
  
 hideMenus();
}

void createMainMenu()
{
  playMain = gui.addButton("Play")
    .hide()
    .setOff()
    .setPosition(width/2 - 150, 450)
    .setSize(300, 75)
    .setId(1)
    .activateBy(ControlP5.RELEASE);
    
  highScore = gui.addButton("High Scores")
    .hide()
    .setOff()
    .setPosition(width/2 - 150, 550)
    .setSize(300, 75)
    .setId(2)
    .activateBy(ControlP5.RELEASE);

  credits = gui.addButton("Credits")
    .hide()
    .setOff()
    .setPosition(width/2 - 150, 650)
    .setSize(300, 75)
    .setId(3)
    .activateBy(ControlP5.RELEASE);
    
  quitMain = gui.addButton("Quit")
    .hide()
    .setOff()
    .setPosition(width/2 - 150, 750)
    .setSize(300, 75)
    .setId(4)
    .activateBy(ControlP5.RELEASE);
}

void createLevelSelect()
{
  /*
    quitMain = gui.addButton("Quit")
    .hide()
    .setOff()
    .setPosition(width/2 - 150, 750)
    .setSize(300, 75)
    .setId(5)
    .activateBy(ControlP5.RELEASE);
    
  quitMain = gui.addButton("Quit")
    .hide()
    .setOff()
    .setPosition(width/2 - 150, 750)
    .setSize(300, 75)
    .setId(6)
    .activateBy(ControlP5.RELEASE);
    
  quitMain = gui.addButton("Quit")
    .hide()
    .setOff()
    .setPosition(width/2 - 150, 750)
    .setSize(300, 75)
    .setId(7)
    .activateBy(ControlP5.RELEASE);
    
  quitMain = gui.addButton("Quit")
    .hide()
    .setOff()
    .setPosition(width/2 - 150, 750)
    .setSize(300, 75)
    .setId(8)
    .activateBy(ControlP5.RELEASE);
    
  quitMain = gui.addButton("Quit")
    .hide()
    .setOff()
    .setPosition(width/2 - 150, 750)
    .setSize(300, 75)
    .setId(9)
    .activateBy(ControlP5.RELEASE);
    
  quitMain = gui.addButton("Quit")
    .hide()
    .setOff()
    .setPosition(width/2 - 150, 750)
    .setSize(300, 75)
    .setId(10)
    .activateBy(ControlP5.RELEASE);
    */
}

void createPause()
{
  /*
    quitMain = gui.addButton("Quit")
    .hide()
    .setOff()
    .setPosition(width/2 - 150, 750)
    .setSize(300, 75)
    .setId(11)
    .activateBy(ControlP5.RELEASE);
    
    quitMain = gui.addButton("Quit")
    .hide()
    .setOff()
    .setPosition(width/2 - 150, 750)
    .setSize(300, 75)
    .setId(12)
    .activateBy(ControlP5.RELEASE);
    */
}

void createRestart()
{
  /*
    quitMain = gui.addButton("Quit")
    .hide()
    .setOff()
    .setPosition(width/2 - 150, 750)
    .setSize(300, 75)
    .setId(13)
    .activateBy(ControlP5.RELEASE);
    
  quitMain = gui.addButton("Quit")
    .hide()
    .setOff()
    .setPosition(width/2 - 150, 750)
    .setSize(300, 75)
    .setId(14)
    .activateBy(ControlP5.RELEASE);
    */
}

void createHighScores()
{
    backScore = gui.addButton("Back to Main Menu")
    .hide()
    .setOff()
    .setPosition(width/2 - 150, 750)
    .setSize(300, 75)
    .setId(15)
    .activateBy(ControlP5.RELEASE);
}

void createCredits()
{
    backCredits = gui.addButton("Return to Main Menu")
    .hide()
    .setOff()
    .setPosition(100, 800)
    .setSize(300, 75)
    .setId(16)
    .activateBy(ControlP5.RELEASE);
}

void hideMenus()
{
  playMain
    .hide()
    .setOff();
  highScore
    .hide()
    .setOff();
  credits
    .hide()
    .setOff();
  quitMain
    .hide()
    .setOff();
    
  backScore
    .hide()
    .setOff();
    
  backCredits
    .hide()
    .setOff();
}