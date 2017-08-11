Snake snake;
/*
PImage[] tile;
ArrayList<World> worlds = new ArrayList<World>();
ArrayList worldTiles = new ArrayList();
*/
int currentLevel = 1;/*
int worldSize = 2;
*/
void setup()
{
  size(900, 900);
  background(0);
  setMenus();
  
  checkSave();
  if (saveExists == false)
  {
    println("Created Save");
    createSave();
  }
  
  checkProgression();
  if (progressionExists == false)
  {
    println("Created Progression");
    createProgression();
  }
  /*
  for (int j = 1, i = 0; i < worldSize; j++, i++)
  {
    worlds.add(new World(j, false));
  }
  */
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

void setLevel1()
{
  
}

void setLevel2()
{
  
}