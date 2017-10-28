void setup()
{
  size(500, 500);
  ship1 = new Ship();
  radar1 = new Radar(100, 0.5, color(0, 255, 0));
  speedometer1 = new Speedometer(100);
  compass1 = new Compass(100);
  ammunition1 = new Ammunition();
  fuel1 = new Fuel();
  buttons1 = new Buttons();
  shooter1 = new Shooter();
}

Ship ship1;
Radar radar1;
Speedometer speedometer1;
Compass compass1;
Ammunition ammunition1;
Fuel fuel1;
Buttons buttons1;
Shooter shooter1;

void draw()
{
  background(0);
  ship1.render();
  
  radar1.render();
  radar1.update();
  
  speedometer1.render();
  
  compass1.render();
  
  ammunition1.render();
  
  fuel1.render();
  
  buttons1.render();
  
  shooter1.render();
}