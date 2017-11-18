void setup()
{
  size(500, 500);
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
    }
    if(key == 's' || key == 'S' || key == 'f' || key =='F')
    {
      speed = 0;
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