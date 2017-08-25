/* Class that holds all of the snake information and functions*/

class Snake
{
  float x, y, xspeed, yspeed, total;
  boolean north = false, south = false, west = false, east = false;
  ArrayList<PVector> tail = new ArrayList<PVector>();
  
  Snake()
  {
    
  }
  
  //updates the direction based on a calculation of speed using 0, 1, and -1
  void dir(float x, float y)
  {
    xspeed = x;
    yspeed = y;
  }
  
  //increases the x or y position of each tail part and head based on the input of the player and previous direction
  void update()
  {
    if (total > 0) 
    {
      if (total == tail.size() && !tail.isEmpty()) 
      {
        tail.remove(0);
      }
      tail.add(new PVector(x, y));
    }

    x = x + xspeed*scale;
    y = y + yspeed*scale;
    
    turn = false;
  }

  //displays the snake head and tail
  void display()
  {
    for (PVector v : tail) 
    {
      image(tile[2], v.x, v.y);
    }
    
    image(tile[2], x, y);
  }

  //ends the game and sends it to restart menu when the snake collides with any walls or the tail
  void death()
  {
    for (int i = 0; i < tail.size(); i++) 
    {
      PVector pos = tail.get(i);
      float d = dist(x, y, pos.x, pos.y);
      
      if (d < 1) 
      {
        updateScores();
        snakeReset();
        resetMenus();
        restartMenu = true;
        restartMusic.loop();
      }
    }
    
    if (level[int(y/scale)][int(x/scale)] == 0)
      {
        updateScores();
        snakeReset();
        resetMenus();
        restartMenu = true;
        restartMusic.loop();
      }
  }

  //updates the direction based on user input
  void direction(int num)
  {
      switch (num)
      {
        case 1:
        resetDirections();
        north = true;
        dir(0, -1);
        break;
    
        case 2:
        resetDirections();
        south = true;
        dir(0, 1);
        break;
    
        case 3:
        resetDirections();
        west = true;
        dir(-1, 0);
        break;
    
        case 4:
        resetDirections();
        east = true;
        dir(1, 0);
        break;
      }
      
      turn = true;
  }
  
  //sets the position and direction of the snake for level 1
  void setPosition1()
  {
    x = 3*scale;
    y = 3*scale;
    direction(4);
  }

  //sets the position and direction of the snake for level 2
  void setPosition2()
  {
    x = 2*scale;
    y = 15*scale;
    direction(4);
  }

  //easy reset of direction booleans
  void resetDirections()
  {
    snek.north = false;
    snek.south = false;
    snek.east = false;
    snek.west = false;
  }
  
  void snakeReset()
  {
    total = 0;
    specialTotal = 1;
    specialCheck = false;
    tail.clear();
  }
}