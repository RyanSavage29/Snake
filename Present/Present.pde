Snake snake;

void setup()
{
  size(900, 900);
  background(0);
  setMenus();
  
  checkSave();
  if (saveExists == false)
  {
    print("Created Save");
    createSave();
  }
  
  checkProgression();
  if (progressionExists == false)
  {
    println("Created Progression");
    createProgression();
  }
}

void draw()
{
  if (mainMenu == true)
  {
    mainMenu();
  }
  
  else if (highScores == true)
  {
    background(50);
    highScores();
  }
  
  else if (creditsMenu == true)
  {
    background(100);
    creditsMenu();
  }
  
  else if (levelSelectMenu == true)
  {
    background(150);
    levelSelectMenu();
  }
  
  else if (gameStart == true)
  {
    background(250);
    gameStart();
  }
  
  else if (restartMenu == true)
  {
    background(200);
    restartMenu();
  }
  
  else if (pauseMenu == true)
  {
    background(250);
    pauseMenu();
  }
}