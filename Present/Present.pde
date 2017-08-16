 Snake snek;

PImage[] tile;
int levelCheck = 1;
float speed = 1;

void setup()
{
  size(900, 900);
  background(0);
  frameRate(60);
  loadTiles();
  
  //Creates and places all the menus as hidden and off
  setMenus();
  
  //Creates a new save file for High Scores if one doesn't already exist
  checkSave();
  if (!checkSave())
  {
    createSave();
  }
  
  /* Not needed yet until progression is completed
  
  checkProgression();
  if (!checkProgression())
  {
    createProgression();
  }
  */
  
  /*
  for (int j = 1, i = 0; i < worldSize; j++, i++)
  {
    worlds.add(new World(j, false));
  }
  */
  
  snek = new Snake(0, 0, false, false, false, true);
}

void draw()
{
  if (mainMenu == true)
  {
    background(0);
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
  else if (game == true)
  {
    background(250);
    runGame();
  }
}