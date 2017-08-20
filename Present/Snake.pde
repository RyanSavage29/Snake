class Snake
{
  float x, y, xspeed, yspeed, total;
  boolean north = false, south = false, west = false, east = false;
  ArrayList<PVector> tail = new ArrayList<PVector>();
  
  Snake()
  {
    
  }
  
  void dir(float x, float y)
  {
    xspeed = x;
    yspeed = y;
  }
  
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
  }

  void display()
  {
    for (PVector v : tail) 
    {
      image(tile[2], v.x, v.y);
    }
    
    image(tile[2], x, y);
  }

  void death()
  {
    for (int i = 0; i < tail.size(); i++) 
    {
      PVector pos = tail.get(i);
      float d = dist(x, y, pos.x, pos.y);
      
      if (d < 1) 
      {
        level[int(food.x/scale)][int(food.y/scale)] = 1;
        total = 0;
        tail.clear();
        resetMenus();
        restartMenu = true;
      }
    }
    
    if (level[int(x/scale)][int(y/scale)] == 0)
      {
        level[int(food.x/scale)][int(food.y/scale)] = 1;
        total = 0;
        tail.clear();
        resetMenus();
        restartMenu = true;
      }
  }

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
  }
  
  void setPosition1()
  {
  
  }

  void setPosition2()
  {
    x = 1*scale;
    y = 9*scale;
    direction(4);
  }

  void resetDirections()
  {
    snek.north = false;
    snek.south = false;
    snek.east = false;
    snek.west = false;
  }
}