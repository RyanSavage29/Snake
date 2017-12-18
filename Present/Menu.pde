import controlP5.*;

ControlP5 gui;
controlP5.Button toMain, toPlay, toCredits, toScores, toQuit, playLevel, backToMain, resume, restart, selectLeft, selectRight, speed1, speed2, speed3;

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

void mainMenu()
{
  toPlay
    .setPosition(width/2 - 150, 450)
    .setSize(300, 75)
    .show()
    .setOn();
    
  toCredits
    .setPosition(width/2 - 150, 550)
    .setSize(300, 75)
    .show()
    .setOn();
    
  toScores
    .setPosition(width/2 - 150, 650)
    .setSize(300, 75)
    .show()
    .setOn();
    
  toQuit
    .setPosition(width/2 - 150, 750)
    .setSize(300, 75)
    .show()
    .setOn();
}

void levelSelectMenu()
{
  playLevel
    .setPosition(width/2 - 150, 100)
    .setSize(300, 75)
    .show()
    .setOn();
    
  if (levelCheck > 1)
  {
    selectLeft
      .setPosition(50, 450)
      .setSize(50, 75)
      .show()
      .setOn();
  }
    
  if (levelCheck < 2)
  {
    selectRight
      .setPosition(800, 450)
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
}

void gameStart()
{
  resetMainMenuMusic();
  textSize(40);
  text("Press an arrow key to begin playing!", width/5, height/3);
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
  restart
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

//Sets and Turns On the Button to Return to Main Menu
//Prints the High Scores onto the Screen
void highScores()
{
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
   setFood(int(random(17)), int(random(17)));
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
   setFood(int(random(29)), int(random(29)));
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