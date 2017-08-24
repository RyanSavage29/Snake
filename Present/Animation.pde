PImage[] cheese, dragon, cat, bug, jigglepoof, shit, coffee, kirby, moa, tardis, fidget;
PImage[] acorn, fuzzy, cookie, cage;
int foodAnimation = 1;

void loadFood()
{
  cheese = new PImage[2];
  
  for (int i = 0; i < cheese.length; i++)
  {
    cheese[i] = loadImage(dataPath("Food/cheese" + i + ".png"));
  }
  /*
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
  
  jigglepoof = new PImage[2];
  
  for (int i = 0; i < jigglepoof.length; i++)
  {
    jigglepoof[i] = loadImage(dataPath("Food/jigglepoof" + i + ".png"));
  }
  
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
  */
  tardis = new PImage[2];
  
  for (int i = 0; i < tardis.length; i++)
  {
    tardis[i] = loadImage(dataPath("Food/tardis" + i + ".png"));
  }
  /*
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
  */
  
  cookie = new PImage[2];
  
  for (int i = 0; i < cookie.length; i++)
  {
    cookie[i] = loadImage(dataPath("Food/cookie" + i + ".png"));
  }
  
  /*
  cage = new PImage[2];
  
  for (int i = 0; i < cage.length; i++)
  {
    cage[i] = loadImage(dataPath("Food/cage" + i + ".png"));
  }
  */
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
    image(tardis[foodAnimation], special.x, special.y);
    break;
    
    case 11:
    image(cookie[foodAnimation], special.x, special.y);
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

void loadCharacter()
{
  
}