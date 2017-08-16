class Snake
{
  float x, y;
  boolean north, south, west, east;
  
  Snake(float x, float y, boolean north, boolean south, boolean west, boolean east)
  {
    this.x = x;
    this.y = y;
    this.north = north;
    this.south = south;
    this.west = west;
    this.east = east;
  }
}

void update(float speed)
{
  if (snek.north == true)
  {
    snek.y -= speed;
  }
  
  if (snek.south == true)
  {
    snek.y += speed;
  }

  if (snek.west == true)
  {
    snek.x -= speed;
  }
  
  if (snek.east == true)
  {
    snek.x += speed;
  }
}

void display()
{
  
}

void death()
{
  
}

void direction(int num)
{
    switch (num)
    {
      case 1:
      resetDirections();
      snek.north = true;
      break;
    
      case 2:
      resetDirections();
      snek.south = true;
      break;
    
      case 3:
      resetDirections();
      snek.west = true;
      break;
    
      case 4:
      resetDirections();
      snek.east = true;
      break;
    }
}

void renderSnake()
{
  image(tile[2], snek.x, snek.y);
}

void setPosition1()
{
  
}

void setPosition2()
{
  snek.x = 1*50;
  snek.y = 9*50;
}

void resetDirections()
{
  snek.north = false;
  snek.south = false;
  snek.east = false;
  snek.west = false;
}

void setFood(int row, int col)
{
  if (level[row][col] == 1)
  {
    level[row][col] = 3;
    food = true;
  }
  
  else
  {
    row = int(random(17));
    col = int(random(17));
    setFood(row, col);
  }
}