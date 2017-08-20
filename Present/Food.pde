PVector food;

//Places the food on a tile that doesn't have collision
void setFood(int row, int col)
{
  if (level[row][col] == 1)
  {
    level[row][col] = 3;
    food = new PVector(row, col);
    food.mult(scale);
  }
  
  else
  {
    row = int(random(17));
    col = int(random(17));
    setFood(row, col);
  }
}

//Checks to see if snake ate the food
boolean eatFood(PVector pos, float snekX, float snekY)
{
  float d = dist(snekX, snekY, pos.y, pos.x);
    
    if (d < 1) 
    {
      snek.total++;
      return true;
    } 
    else 
    {
      return false;
    }
}