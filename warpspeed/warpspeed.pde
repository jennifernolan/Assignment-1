import processing.sound.*;

void setup()
{
  size(500, 500); 
  
  //Loud the sundfiles 
  sound1 = new SoundFile(this, "shut_off.wav");
  sound2 = new SoundFile(this, "Accelerate.wav");
  sound3 = new SoundFile(this, "Power_Up.wav");
  sound4 = new SoundFile(this, "Robot_blip.wav");
  sound5 = new SoundFile(this, "LaserBlasts7.wav");
  
  //Iterate over the stars array to create a new star
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
    //when accelerating speed makes the stars move and a sound is played
    if(key == 'a' || key == 'A')
    {
      speed = 50;
      sound2.play();
    }
    //when stopping the speed is set back to zero
    if(key == 's' || key == 'S' || key == 'f' || key =='F')
    {
      speed = 0;
    }
    //power off sound
    if(key == 'f' || key =='F')
    {
      sound1.play();
    }
    //power on sound
    if(key == 'o' || key == 'O')
    {
      sound3.play();
    }
    //laser shooting sound
    if(key == ' ')
    {
      sound5.play();
    }
  }
  
  //when accelerating change the background colour to look like warpspeed otherwise just a black background
  if(speed == 50)
  {
    background(50, 50, 255);
  }
  else
  {
    background(0);
  }
  
  //background noise of space
  sound4.loop(0.1f);
  
  //display the stars onto the screen
  translate(width / 2, height / 2);
  for(int i = 0; i < stars.length; i++)
  {
    stars[i].update();
    stars[i].show();
  }
  
  //display all other class methods to the screen
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