/* Class that contains all of the functions for saving high scores and progression */

PrintWriter scores, progression;
Table table;
boolean saveExists, progressionExists = false;
File f;
int newScore = 0;

//Creates a new High Score save file in csv file type with scores of 0 and current date
void createSave()
{
  scores = createWriter(dataPath("Scores.csv"));
  scores.println("Score" + "," + "Date");
  
  for (int i = 0; i < 5; i++)
  {
    scores.println(0 + "," + month() + "/" + day() + "/" + year());
  }
  
  scores.flush();
  scores.close();
}

/* Not needed yet until progression is completed

void createProgression()
{
  progression = createWriter(dataPath("Progression.csv"));
  progression.println("0");
  
  progression.flush();
  progression.close();
}
*/

//Returns true if a High Score Save file already exists 
boolean checkSave()
{
  f = new File(dataPath("Scores.csv"));
  if (f.exists())
  {
    saveExists = true;
  }
  return saveExists;
}

/* Not needed yet until progression is completed

void checkProgression()
{
  f = new File(dataPath("Progression.csv"));
  if (f.exists())
  {
    progressionExists = true;
  }
}
*/

//Updates the High Scores when the player achieves a High Score by adding, sorting, and then removing the lowest High Score, cannot go past 5 High Scores
void updateScores()
{
  loadSave();
  
  TableRow row = table.addRow();
  row.setInt("Score", newScore);
  row.setString("Date", month() + "/" + day() + "/" + year());
  
  table.sortReverse("Score");
  
  if (table.getRowCount() > 5)
  {
    for (int i = table.getRowCount(); i > 5; i--)
    {
      table.removeRow(i - 1);
    }
  }
  
  saveTable(table, "Data/Scores.csv");
  
  newScore = 0;
}

//Loads the High Scores into a table
void loadSave()
{
  table = loadTable("Scores.csv", "header");
  
  table.setColumnType("Score", Table.INT);
}

//Prints the High Scores onto the Screen
void printHighScores()
{
  loadSave();
  
  textSize(26);
  
  text("High Scores", width/3, 50);
  text("Date", 600, 50);
  
  for (int i = 0; i < 5; i++)
  {
    TableRow row = table.getRow(i);
    text(row.getInt("Score"), width/3, 125 + (i * 125));
    text(row.getString("Date"), 600, 125 + (i * 125));
  }
}