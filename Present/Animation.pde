PImage[] cheese, dragon, cat, bug, jigglepoof, shit, coffee, kirby, moa, tardis, fidget;
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
  
  for (int i = 0; i < dragon.lengthl i++)
  {
    dragon[i] = loadImage(dataPath("Food/dragon" + i + ".png"));
  }
  
  cat = new PImage[2];
  
  for (int i = 0; i < cat.lengthl i++)
  {
    cat[i] = loadImage(dataPath("Food/cat" + i + ".png"));
  }
  
  bug = new PImage[2];
  
  for (int i = 0; i < bug.lengthl i++)
  {
    bug[i] = loadImage(dataPath("Food/bug" + i + ".png"));
  }
  
  jigglepoof = new PImage[2];
  
  for (int i = 0; i < jigglepoof.lengthl i++)
  {
    jigglepoof[i] = loadImage(dataPath("Food/jigglepoof" + i + ".png"));
  }
  
  shit = new PImage[2];
  
  for (int i = 0; i < shit.lengthl i++)
  {
    shit[i] = loadImage(dataPath("Food/shit" + i + ".png"));
  }
  
  coffee = new PImage[2];
  
  for (int i = 0; i < coffee.lengthl i++)
  {
    coffee[i] = loadImage(dataPath("Food/coffee" + i + ".png"));
  }
  
  kirby = new PImage[2];
  
  for (int i = 0; i < kirby.lengthl i++)
  {
    kirby[i] = loadImage(dataPath("Food/kirby" + i + ".png"));
  }
  
  moa = new PImage[2];
  
  for (int i = 0; i < moa.lengthl i++)
  {
    moa[i] = loadImage(dataPath("Food/moa" + i + ".png"));
  }
  
  tardis = new PImage[2];
  
  for (int i = 0; i < tardis.lengthl i++)
  {
    tardis[i] = loadImage(dataPath("Food/tardis" + i + ".png"));
  
  
  fidget = new PImage[2];
  
  for (int i = 0; i < fidget.lengthl i++)
  {
    fidget[i] = loadImage(dataPath("Food/fidget" + i + ".png"));
  }
  */
}