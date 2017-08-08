void keyPressed()
{
  
}

void keyReleased()
{
  if (key == CODED)
  {
    if (keyCode == UP || keyCode == DOWN || keyCode == RIGHT || keyCode == LEFT && gameStart == true)
    {
      resetMenus();
    }
  }
}