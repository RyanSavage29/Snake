/* Class that loads and controls all of the music */

import processing.sound.*;

SoundFile mainMusic, creditsMusic, restartMusic;
SoundFile[] totoro, guildWars;

boolean mainMusicIsPlaying = false;

//Loads all of the music in setup
void createAudio()
{ 
  mainMusic = new SoundFile(this, "Music/PMD_Menu.ogg");
  creditsMusic = new SoundFile(this, "Music/Queen1.wav");
  restartMusic = new SoundFile(this, "Music/Undyne_Death.ogg");
  
  totoro = new SoundFile[3];
  
  for (int i = 0; i < totoro.length; i++)
  {
    totoro[i] = new SoundFile(this, "Music/Totoro" + i + ".ogg");
  }
  
  guildWars = new SoundFile[3];
  
  for (int i = 0; i < guildWars.length; i++)
  {
    guildWars[i] = new SoundFile(this, "Music/GuildWars" + i + ".ogg");
  }
}

//Easy to call function that stops all of the music
void resetMusic()
{ 
  creditsMusic.stop();
  
  restartMusic.stop();
  
  for (int i = 0; i < 3; i++)
  {
    totoro[i].stop();
    
    guildWars[i].stop();
  }
}

//Easy to call function that stops main menu music
void resetMainMenuMusic()
{
  mainMusic.stop();
  mainMusicIsPlaying = false;
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