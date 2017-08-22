PVector food, special;
int specialTotal;
boolean tailCheck, specialCheck;

//Places the food on a tile that doesn't have collision
void setFood(int row, int col)
{
  for (PVector v : snek.tail) 
    {
      if (col == v.x/scale && row == v.y/scale)
      {
        tailCheck = true;
        break;
      }
      else
      {
        tailCheck = false;
      }
    }
    
  //need to rework this so that food doesn't change the grid tiles, only builds a food object over it
  if (level[row][col] == 1 && tailCheck == false/* && !(row == special.x && col == special.y)*/)
  {
    food = new PVector(row, col);
    food.mult(scale);
  }
  
  else
  {
    row = int(random(29));
    col = int(random(29));
    setFood(row, col);
  }
}

void setSpecial(int row, int col)
{
  for (PVector v : snek.tail) 
    {
      if (col == v.x/scale && row == v.y/scale)
      {
        tailCheck = true;
        break;
      }
      else
      {
        tailCheck = false;
      }
    }
    
  //need to rework this so that food doesn't change the grid tiles, only builds a food object over it
  if (level[row][col] == 1 && tailCheck == false && !(row == food.x && col == food.y))
  {
    special = new PVector(row, col);
    special.mult(scale);
  }
  
  else
  {
    row = int(random(29));
    col = int(random(29));
    setSpecial(row, col);
  }
}

//Checks to see if snake ate the food
boolean eatFood(PVector pos, float snekX, float snekY)
{
  float d = dist(snekX, snekY, pos.x, pos.y);
  
    if (d < 1) 
    {
      snek.total++;
      newScore += levelCheck * speed;
      return true;
    } 
    return false;
}

boolean eatSpecial(PVector pos, float snekX, float snekY)
{
  float d = dist(snekX, snekY, pos.x, pos.y);
  
  if (d < 1)
  {
    snek.total++;
    specialTotal++;
    newScore += (levelCheck * speed) + (specialTotal * speed);
    return true;
  }
  return false;
}