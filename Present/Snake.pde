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
  if (snake.north == true)
  {
    snake.y -= speed;
  }
  
  if (snake.south == true)
  {
    snake.y += speed;
  }

  if (snake.west == true)
  {
    snake.x -= speed;
  }
  
  if (snake.east == true)
  {
    snake.x += speed;
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
    snake.north = true;
    break;
    
    case 2:
    resetDirections();
    snake.south = true;
    break;
    
    case 3:
    resetDirections();
    snake.west = true;
    break;
    
    case 4:
    resetDirections();
    snake.east = true;
    break;
  }
}

void renderSnake()
{
  image(tile[2], snake.x, snake.y);
}

void setPosition1()
{
  
}

void setPosition2()
{
  snake.x = 1*50;
  snake.y = 9*50;
}

void resetDirections()
{
  snake.north = false;
  snake.south = false;
  snake.east = false;
  snake.west = false;
}