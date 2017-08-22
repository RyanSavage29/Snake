import ddf.minim.*;

Minim minim;
AudioPlayer menuMusic, creditsMusic;
AudioPlayer[] totoro, guildWars;

void createAudio()
{
  minim = new Minim(this);
  
  creditsMusic = minim.loadFile("Music/Queen.wav");
  
  totoro = new AudioPlayer[3];
  
  for (int i = 0; i < 3; i++)
  {
    totoro[i] = minim.loadFile("Music/Totoro" + i + ".mp3");
  }
}

void resetMusic()
{
  creditsMusic.rewind();
  creditsMusic.pause();
  
  for (int i = 0; i < 3; i++)
  {
    totoro[i].rewind();
    totoro[i].pause();
  }
}

void playLevelMusic()
{
  switch(levelCheck)
  {
    case 1:
    totoro[int(random(3))].loop();
    break;
  }
}