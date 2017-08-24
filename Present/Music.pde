/* Class that loads and controls all of the music */

import ddf.minim.*;

Minim minim;
AudioPlayer mainMusic, creditsMusic, restartMusic;
AudioPlayer[] totoro, guildWars;

//Loads all of the music in setup
void createAudio()
{
  minim = new Minim(this);
  
  mainMusic = minim.loadFile("Music/PMD Menu.wav");
  creditsMusic = minim.loadFile("Music/Queen1.wav");
  restartMusic = minim.loadFile("Music/Undyne Death.wav");
  
  totoro = new AudioPlayer[3];
  
  for (int i = 0; i < totoro.length; i++)
  {
    totoro[i] = minim.loadFile("Music/Totoro" + i + ".wav");
  }
  
  guildWars = new AudioPlayer[3];
  
  for (int i = 0; i < guildWars.length; i++)
  {
    guildWars[i] = minim.loadFile("Music/GuildWars" + i + ".mp3");
  }
}

//Easy to call function that stops all of the music
void resetMusic()
{ 
  creditsMusic.rewind();
  creditsMusic.pause();
  
  restartMusic.rewind();
  restartMusic.pause();
  
  for (int i = 0; i < 3; i++)
  {
    totoro[i].rewind();
    totoro[i].pause();
    
    guildWars[i].rewind();
    guildWars[i].pause();
  }
}

//Easy to call function that stops main menu music
void resetMainMenuMusic()
{
  mainMusic.rewind();
  mainMusic.pause();
}

//Plays music for each level based on what level it is
void playLevelMusic()
{
  switch(levelCheck)
  {
    case 1:
    totoro[int(random(3))].loop();
    break;
    
    case 2:
    guildWars[int(random(3))].loop();
    break;
  }
}