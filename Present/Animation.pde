PImage[] cheese, dragon, cat, bug, jigglepoof, shit, coffee, kirby, moa, tardis, fidget;
int foodAnimation = 1;

void loadFood()
{
  cheese = new PImage[2];
  
  for (int i = 0; i < cheese.length; i++)
  {
    cheese[i] = loadImage(dataPath("Food/cheese" + i + ".png"));
  }
}