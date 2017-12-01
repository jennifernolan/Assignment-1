import processing.sound.*;

void setup()
{
  size(500, 500); 
  
  sound1 = new SoundFile(this, "shut_off.wav");
  sound2 = new SoundFile(this, "Accelerate.wav");
  sound3 = new SoundFile(this, "Power_Up.wav");
  sound4 = new SoundFile(this, "Robot_blip.wav");
  sound5 = new SoundFile(this, "LaserBlasts7.wav");
  
  for(int i = 0; i < stars.length; i++)
  {
    stars[i] = new Star();
  }
  ship1 = new Ship();
  aimer1 = new Aimer();
  ammunition1 = new Ammunition();
  buttons1 = new Buttons();
  compass1 = new Compass(100, 0.3);
  fuel1 = new Fuel();
  radar1 = new Radar(180, 0.5, color(0, 255, 0));
  speedometer1 = new Speedometer(180, 0.5);
}

SoundFile sound1;
SoundFile sound2;
SoundFile sound3;
SoundFile sound4;
SoundFile sound5;

Star[] stars = new Star[2000];
float speed;
Ship ship1;
Aimer aimer1;
Ammunition ammunition1;
Buttons buttons1;
Compass compass1;
Fuel fuel1;
Radar radar1;
Speedometer speedometer1;

void draw()
{
  if(keyPressed)
  {
    if(key == 'a' || key == 'A')
    {
      speed = 50;
      sound2.play();
    }
    if(key == 's' || key == 'S' || key == 'f' || key =='F')
    {
      speed = 0;
    }
    if(key == 'f' || key =='F')
    {
      sound1.play();
    }
    if(key == 'o' || key == 'O')
    {
      sound3.play();
    }
    if(key == ' ')
    {
      sound5.play();
    }
  }
  
  if(speed == 50)
  {
    background(50, 50, 255);
  }
  else
  {
    background(0);
  }
  
  sound4.loop(0.1f);
  
  translate(width / 2, height / 2);
  for(int i = 0; i < stars.length; i++)
  {
    stars[i].update();
    stars[i].show();
  }
  
  ship1.render();
  ship1.keyPressed();
  
  aimer1.render();
  aimer1.key();
  
  ammunition1.render();
  ammunition1.keyReleased();
  
  buttons1.render();
  buttons1.key();
  buttons1.keyPressed();
  buttons1.keyReleased();
  
  compass1.render();
  compass1.update();
  
  fuel1.render();
  fuel1.keyPressed();
  
  radar1.render();
  radar1.update();
  radar1.keyPressed();
  
  speedometer1.render();
  speedometer1.update();
  speedometer1.keyPressed();
  speedometer1.keyReleased();
}