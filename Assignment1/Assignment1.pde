void setup()
{
  size(500, 500);
  ship1 = new Ship();
  radar1 = new Radar(140, 0.5, color(0, 255, 0));
  speedometer1 = new Speedometer(140, 0.5);
  compass1 = new Compass(100, 0.1);
  ammunition1 = new Ammunition();
  fuel1 = new Fuel();
  buttons1 = new Buttons();
  shooter1 = new Shooter();
  aimer1 = new Aimer();
  for(int i = 0; i < stars.length; i++)
  {
    stars[i] = new Star();
  }
}

Ship ship1;
Radar radar1;
Speedometer speedometer1;
Compass compass1;
Ammunition ammunition1;
Fuel fuel1;
Buttons buttons1;
Shooter shooter1;
Aimer aimer1;

Star[] stars = new Star[1000];
float speed;

void draw()
{
  if(keyPressed)
  {
    if(key == 'a' || key == 'A')
    {
      speed = 50;
    }
    else
    {
      speed = 0;
    }
  }
  background(0);
  //translate(width / 2, height / 2);
  for(int i = 0; i < stars.length; i++)
  {
    stars[i].update();
    stars[i].show();
  }

  ship1.render();
  ship1.keyPressed();
  
  radar1.render();
  radar1.update();
  
  speedometer1.render();
  speedometer1.update();
  
  compass1.render();
  compass1.update();
  
  ammunition1.render();
  
  fuel1.render();
  
  buttons1.render();
  buttons1.key();
  buttons1.keyPressed();
  
  shooter1.render();
  
  aimer1.render();
  aimer1.key();  
}