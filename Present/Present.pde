 Snake snek;

PImage[] tile;
int levelCheck = 1;
float speed = 5;

void setup()
{
  size(900, 900);
  
  //Loads all of the tiles into an array
  loadTiles();
  
  loadFood();
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
  createAudio();
  snek = new Snake();
}

void draw()
{
  background(0);
  gameState();
}

void gameState()
{
  if (mainMenu == true)
  {
    mainMenu();
  }
  
  else if (highScores == true)
  {
    highScores();
  }
  
  else if (creditsMenu == true)
  {
    creditsMenu();
  }
  
  else if (levelSelectMenu == true)
  {
    levelSelectMenu();
  }
  
  else if (gameStart == true)
  {
    gameStart();
  }
  
  else if (restartMenu == true)
  {
    restartMenu();
  }
  
  else if (pauseMenu == true)
  {
    pauseMenu();
  }
  else if (game == true)
  {
    runGame();
    if (foodAnimation == 0)
    {
      foodAnimation += 1;
    }
    else
    {
      foodAnimation -= 1;
    }
  }
}

void runGame()
{
  frameRate(speed);
  
  renderGrid();
  
  if (eatFood(food, snek.x, snek.y))
  {
    setFood(int(random(29)), int(random(29)));
  }
  
  /*if (eatSpecial(special, snek.x, snek.y))
  {
    setSpecial(int(random(29)), int(random(29)));
  }*/
  
  image(cheese[foodAnimation], food.x, food.y);
  //image(tile[5], special.x, special.y);
  snek.update();
  snek.display();
  snek.death();
}