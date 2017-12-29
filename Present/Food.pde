PVector food, special;
int specialTotal = 1, randSpecial, pickSpecial, specialCount;
boolean tailCheck, specialCheck = false;

//Places the food on a tile that doesn't have collision
void setInitialFood(int row, int col)
{
  if (level[col][row] >= 1)
  {
    food = new PVector(row, col);
    food.mult(scale);
  }
  
  else
  {
    row = int(random(29));
    col = int(random(29));
    setInitialFood(row, col);
  }
}

void setFood(PVector pos, int row, int col, float snekX, float snekY)
{
  for (PVector v : snek.tail) 
    {
      if (row == v.x/scale && col == v.y/scale)
      {
        tailCheck = true;
        break;
      }
      else
      {
        tailCheck = false;
      }
    }
    
  if (level[col][row] >= 1 && level[col][row] != 10 && !tailCheck && !specialCheck && (pos.x == snekX && pos.y == snekY))
  {
    specialCount += 1;
    food = new PVector(row, col);
    food.mult(scale);
  }
  
  else if (specialCheck)
  {
    if (level[row][col] >= 1 && !tailCheck && !(row == special.x/scale && col == special.y/scale) && (pos.x == snekX && pos.y == snekY))
    {
      specialCount += 1;
      food = new PVector(row, col);
      food.mult(scale);
    }
    else
    {
      row = int(random(29));
      col = int(random(29));
      setFood(pos, row, col, snekX, snekY);
    }
  }
  
  else
  {
    row = int(random(29));
    col = int(random(29));
    setFood(pos, row, col, snekX, snekY);
  }
}

void setSpecial(int row, int col)
{
  for (PVector v : snek.tail) 
    {
      if (row == v.x/scale && col == v.y/scale)
      {
        tailCheck = true;
        break;
      }
      else
      {
        tailCheck = false;
      }
    }
    
  if (level[row][col] >= 1 && level[col][row] != 10 && !tailCheck && !(row == food.x/scale && col == food.y/scale))
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

void eatSpecial(PVector pos, float snekX, float snekY)
{
  float d = dist(snekX, snekY, pos.x, pos.y);
  
  if (d < 1)
  {
    snek.total++;
    newScore += (levelCheck * speed) + (specialTotal * speed);
    specialTotal++;
    specialCount = 0;
    specialCheck = false;
  }
}

void checkSpecial()
{
  if ((randSpecial == specialCount & !specialCheck))
  {
    pickSpecial = int(random(2));
    setSpecial(int(random(29)), int(random(29)));
    tempRandom();
    specialCheck = true;
  }
}