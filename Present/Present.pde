Snake snake;

void setup()
{
  size(600, 600);
}

void draw()
{
  snake.update();
  snake.display();
}