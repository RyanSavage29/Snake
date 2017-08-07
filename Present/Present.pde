Snake snake;

void setup()
{
  size(900, 900);
  background(0);
  setMenus();
}

void draw()
{
  if (mainMenu == true)
  {
    mainMenu();
  }
  
  else if (highScores == true)
  {
    highScores();
    background(50);
  }
  
  else if (creditsMenu == true)
  {
    creditsMenu();
    background(100);
  }
  
  else if (levelSelectMenu == true)
  {
    levelSelectMenu();
    background(150);
  }
  
  else if (restartMenu == true)
  {
    restartMenu();
    background(200);
  }
  
  else if (pauseMenu == true)
  {
    pauseMenu();
    background(250);
  }
}