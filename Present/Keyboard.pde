void keyPressed()
{
  
}

void keyReleased()
{
  if (key == CODED)
  {
    if (keyCode == UP && game == true)
    {
      direction(1);
    }
    
    if (keyCode == DOWN && game == true)
    {
      direction(2);
    }
    
    if (keyCode == LEFT && game == true)
    {
      direction(3);
    }
    
    if (keyCode == RIGHT && game == true)
    {
      direction(4);
    }
    
    if (keyCode == UP || keyCode == DOWN || keyCode == RIGHT || keyCode == LEFT && gameStart == true)
    {
      resetMenus();
      game = true;
    }
    
    
  }
}