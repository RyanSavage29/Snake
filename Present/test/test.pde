PImage[] tile;

void setup()
{
  size(900, 900);
  background(0);
  loadTiles();
}

void draw()
{
  renderGrid();
}