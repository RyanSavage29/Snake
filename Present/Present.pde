Snake snek;

float speed = 5;

void setup()
{
  //900 x 900 pixel canvas
  size(900, 900);
  
  //Loads all of the tiles into an array
  loadTiles();
  
  //Loads all of the food and special sprites into an array
  loadFood();
  
  //Loads all of the backgrounds into an array
  loadBackground();
  
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
  //Creates all of the audio
  createAudio();
  
  snek = new Snake();
  
  mainMusic.loop();
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
  //println(temp1);
  frameRate(speed);
  renderGrid();
  
  checkSpecial();
  
  if (specialCheck)
  {
    pickSpecial(temp1, levelCheck);
    eatSpecial(special, snek.x, snek.y);
  }
  
  if (eatFood(food, snek.x, snek.y))
  {
    setFood(int(random(29)), int(random(29)));
  }
  
  image(cheese[foodAnimation], food.x, food.y);
  
  snek.update();
  snek.display();
  snek.death();
}