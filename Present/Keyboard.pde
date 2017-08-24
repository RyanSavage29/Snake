boolean turn = false;

void keyPressed()
{
  if (key == CODED)
  {
    if (game == true && !turn)
    {
      if (keyCode == UP && snek.north == false && snek.south == false)
      {
        snek.direction(1);
      }
    
      if (keyCode == DOWN && snek.south == false && snek.north == false)
      {
        snek.direction(2);
      }
    
      if (keyCode == LEFT && snek.west == false && snek.east == false)
      {
        snek.direction(3);
      }
    
      if (keyCode == RIGHT && snek.east == false && snek.west == false)
      {
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