PImage[] cheese, dragon, cat, bug, jigglepoof, shit, coffee, kirby, moa, tardis, fidget;
PImage[] acorn, fuzzy, cookie, cage;
int temp1, temp2, tempCheck = -1;
int foodAnimation = 1;

void loadFood()
{
  cheese = new PImage[2];
  
  for (int i = 0; i < cheese.length; i++)
  {
    cheese[i] = loadImage(dataPath("Food/cheese" + i + ".png"));
  }
  
  dragon = new PImage[2];
  
  for (int i = 0; i < dragon.length; i++)
  {
    dragon[i] = loadImage(dataPath("Food/dragon" + i + ".png"));
  }
  
  cat = new PImage[2];
  
  for (int i = 0; i < cat.length; i++)
  {
    cat[i] = loadImage(dataPath("Food/cat" + i + ".png"));
  }
  
  bug = new PImage[2];
  
  for (int i = 0; i < bug.length; i++)
  {
    bug[i] = loadImage(dataPath("Food/bug" + i + ".png"));
  }
  /*
  jigglepoof = new PImage[2];
  
  for (int i = 0; i < jigglepoof.length; i++)
  {
    jigglepoof[i] = loadImage(dataPath("Food/jigglepoof" + i + ".png"));
  }
  */
  shit = new PImage[2];
  
  for (int i = 0; i < shit.length; i++)
  {
    shit[i] = loadImage(dataPath("Food/shit" + i + ".png"));
  }
  
  
  coffee = new PImage[2];
  
  for (int i = 0; i < coffee.length; i++)
  {
    coffee[i] = loadImage(dataPath("Food/coffee" + i + ".png"));
  }
  
  kirby = new PImage[2];
  
  for (int i = 0; i < kirby.length; i++)
  {
    kirby[i] = loadImage(dataPath("Food/kirby" + i + ".png"));
  }
  
  moa = new PImage[2];
  
  for (int i = 0; i < moa.length; i++)
  {
    moa[i] = loadImage(dataPath("Food/moa" + i + ".png"));
  }
  
  tardis = new PImage[2];
  
  for (int i = 0; i < tardis.length; i++)
  {
    tardis[i] = loadImage(dataPath("Food/tardis" + i + ".png"));
  }
  
  fidget = new PImage[2];
  
  for (int i = 0; i < fidget.length; i++)
  {
    fidget[i] = loadImage(dataPath("Food/fidget" + i + ".png"));
  }
  
  acorn = new PImage[2];
  
  for (int i = 0; i < acorn.length; i++)
  {
    acorn[i] = loadImage(dataPath("Food/acorn" + i + ".png"));
  }
  
  fuzzy = new PImage[2];
  
  for (int i = 0; i < acorn.length; i++)
  {
    fuzzy[i] = loadImage(dataPath("Food/fuzzy" + i + ".png"));
  }
  
  cookie = new PImage[2];
  
  for (int i = 0; i < cookie.length; i++)
  {
    cookie[i] = loadImage(dataPath("Food/cookie" + i + ".png"));
  }
  
  cage = new PImage[2];
  
  for (int i = 0; i < cage.length; i++)
  {
    cage[i] = loadImage(dataPath("Food/cage" + i + ".png"));
  }
  
}

void pickSpecial(int num, int levelCheck)
{
  switch (levelCheck)
  {
    case 1:
    totoroSpecial(num);
    break;
    
    case 2:
    guildWarsSpecial(num);
    break;
  }
}

void totoroSpecial(int num)
{
  switch (num)
  {
    case 10:
    image(acorn[foodAnimation], special.x, special.y);
    break;
    
    case 11:
    image(fuzzy[foodAnimation], special.x, special.y);
    break;
    
    default:
    regularSpecial(num);
    break;
  }
}

void guildWarsSpecial(int num)
{
  switch (num)
  {
    case 10:
    image(cookie[foodAnimation], special.x, special.y);
    break;
    
    case 11:
    image(cage[foodAnimation], special.x, special.y);
    break;
    
    default:
    regularSpecial(num);
    break;
  }
}

void regularSpecial(int num)
{
  switch (num)
  {
    case 0:
    image(dragon[foodAnimation], special.x, special.y);
    break;
    
    case 1:
    image(cat[foodAnimation], special.x, special.y);
    break;
    
    case 2:
    image(bug[foodAnimation], special.x, special.y);
    break;
    
    case 3:
    image(jigglepoof[foodAnimation], special.x, special.y);
    break;
    
    case 4:
    image(shit[foodAnimation], special.x, special.y);
    break;
    
    case 5:
    image(coffee[foodAnimation], special.x, special.y);
    break;
    
    case 6:
    image(kirby[foodAnimation], special.x, special.y);
    break;
    
    case 7:
    image(moa[foodAnimation], special.x, special.y);
    break;
    
    case 8:
    image(tardis[foodAnimation], special.x, special.y);
    break;
    
    case 9:
    image(fidget[foodAnimation], special.x, special.y);
    break;
  }
}

void displayHead(float x, float y)
{
  if ((direction == 1 && previousDirection == 3) || (direction == 3 && previousDirection == 1))
  {
    image(tile[6], x, y);
  }
  
  else if ((direction == 1 && previousDirection == 4) || (direction == 4 && previousDirection == 1))
  {
    image(tile[7], x, y);
  }
  
  else if ((direction == 2 && previousDirection == 3) || (direction == 3 && previousDirection == 2))
  {
    image(tile[5], x, y);
  }
  
  else if ((direction == 2 && previousDirection == 4) || (direction == 4 && previousDirection == 2))
  {
    image(tile[4], x, y);
  }
}

void displayTail(float x, float y, float z, float w)
{
  if ((w == 1 && z == 3) || (w == 3 && z == 1))
  {
    //image(tile[12], x, y);
    image(tile[6], x, y);
  }
  
 else if ((w == 1 && z == 4) || (w == 4 && z == 1))
  {
    //image(tile[11], x, y);
    image(tile[7], x, y);
  }
  
  else if ((w == 2 && z == 3) || (w == 3 && z == 2))
  {
    //image(tile[10], x, y);
    image(tile[5], x, y);
  }
  
  else if ((w == 2 && z == 4) || (w == 4 && z == 2))
  {
    //image(tile[3], x, y);
    image(tile[4], x, y);
  }
}

void tempRandom()
{
  temp1 = int(random(12));
  
  if (temp1 == 3)
  {
    tempRandom();
  }
  
  if (tempCheck == temp1)
  {
    tempRandom();
  }
  
  tempCheck = temp1;
}