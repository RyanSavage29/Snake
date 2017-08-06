void keyPressed()
{
  if (key == CODED)
    {
      if (keyCode == UP)
      {
        snake.up
      } 
      
      else if (keyCode == DOWN)
      {
        player1.resetDirection();
        player1.south = true;
        player1.playerDirection();
      } 
      
      else if (keyCode == LEFT)
      {
        player1.resetDirection();
        player1.west = true;
        player1.playerDirection();
      } 
      
      else if (keyCode == RIGHT)
      {
        player1.resetDirection();
        player1.east = true;
        player1.playerDirection();
      }
    }
}