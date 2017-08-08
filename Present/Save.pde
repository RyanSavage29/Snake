PrintWriter scores, progression;
boolean saveExists, progressionExists = false;
File f;

void createSave()
{
  scores = createWriter(dataPath("Scores.txt"));
  scores.println("Score" + "," + "Date");
  
  for (int i = 0; i < 5; i++)
  {
    scores.println(0 + "," + 8 + "," + 8 + "," + 2017);
  }
  
  scores.flush();
  scores.close();
}

void createProgression()
{
  progression = createWriter(dataPath("Progression.txt"));
  progression.println("0");
  
  progression.flush();
  progression.close();
}

void checkSave()
{
  f = new File(dataPath("Scores.txt"));
  if (f.exists())
  {
    saveExists = true;
  }
}

void checkProgression()
{
  f = new File(dataPath("Scores.txt"));
  if (f.exists())
  {
    progressionExists = true;
  }
}