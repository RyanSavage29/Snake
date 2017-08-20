 Snake snek;

PImage[] tile;
int levelCheck = 1;
float speed = 5;

void setup()
{
  size(900, 900);
  background(0);
  
  //Loads all of the tiles into an array
  loadTiles();
  
  //Creates and sets all the menus as hidden and off
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
  
  snek = new Snake();
}

void draw()
{
  gameState();
}

void gameState()
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

void runGame()
{
  frameRate(speed);
  
  renderGrid();
  
  if (eatFood(food, snek.x, snek.y))
  {
    food.div(scale);
    level[int(food.x)][int(food.y)] = 1;
    setFood(int(random(17)), int(random(17)));
  }
  
  snek.update();
  snek.display();
  snek.death();
}