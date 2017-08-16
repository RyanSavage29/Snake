int check;

void keyPressed()
{
  
}

void keyReleased()
{
  if (key == CODED)
  {
    if (keyCode == UP && game == true && snek.north == false && snek.south == false)
    {
      check = 1;
    }
    
    if (keyCode == DOWN && game == true && snek.south == false && snek.north == false)
    {
      check = 2;
    }
    
    if (keyCode == LEFT && game == true && snek.west == false && snek.east == false)
    {
      check = 3;
    }
    
    if (keyCode == RIGHT && game == true && snek.east == false && snek.west == false)
    {
      check = 4;
    }
    
    if (keyCode == UP || keyCode == DOWN || keyCode == RIGHT || keyCode == LEFT && gameStart == true)
    {
      resetMenus();
      game = true;
    }
  }
}

void wait(int num, float snek)
{
  if (snek%50 == 0)
  {
    check = 0;
    direction(num);
  }
}