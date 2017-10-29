void setup()
{
  size(500, 500);
  ship1 = new Ship();
  radar1 = new Radar(140, 0.5, color(0, 255, 0));
  speedometer1 = new Speedometer(140, 0.5);
  compass1 = new Compass(100, 0.5);
  ammunition1 = new Ammunition();
  fuel1 = new Fuel();
  buttons1 = new Buttons();
  //shooter1 = new Shooter();
  aimer1 = new Aimer();
}

Ship ship1;
Radar radar1;
Speedometer speedometer1;
Compass compass1;
Ammunition ammunition1;
Fuel fuel1;
Buttons buttons1;
//Shooter shooter1;
Aimer aimer1;

void draw()
{
  background(0);

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
  
 // shooter1.render();
  
  aimer1.render();
  aimer1.key();
}