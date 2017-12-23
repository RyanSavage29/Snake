boolean turn = false, clean = false;

int previousDirection, direction;

void keyPressed()
{
  if (mainMenu == true && !clean)
    {
      if (key == 'q' || key == 'Q')
      {
        clean = true;
      }
    }
    
  if (key == CODED)
  {
    if (game == true && !turn)
    {
      if (keyCode == UP && snek.north == false && snek.south == false)
      {
        previousDirection = direction;
        snek.direction(1);
      }
    
      if (keyCode == DOWN && snek.south == false && snek.north == false)
      {
        previousDirection = direction;
        snek.direction(2);
      }
    
      if (keyCode == LEFT && snek.west == false && snek.east == false)
      {
        previousDirection = direction;
        snek.direction(3);
      }
    
      if (keyCode == RIGHT && snek.east == false && snek.west == false)
      {
        previousDirection = direction;
        snek.direction(4);
      }
    }
    
    
    if ((keyCode == UP || keyCode == DOWN || keyCode == RIGHT || keyCode == LEFT) && gameStart == true)
    {
      resetMenus();
      game = true;
      playLevelMusic();
    }
  }
}