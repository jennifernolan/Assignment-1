void setup()
{
  size(500, 500);
}

//all global variables
float shipHeight = height / 0.3f;
float shootery = height / 2;
float shooterx = width / 0.4f;

void draw()
{
  background(0);
  drawShip();
  drawShooter();
  drawCompass();
  drawAmmunition();
  drawFuel();
  drawMap();
  drawSpeed();
  drawButtons();
}

void drawShip()
{
 stroke(85, 107, 47);
 fill(85, 107, 47);
 
 beginShape();
 vertex(0, shipHeight);
 vertex(width * 0.15, shipHeight - 15); 
 vertex(width * 0.80, shipHeight - 15);
 vertex(width, shipHeight);
 vertex(width, height);
 vertex(0, height);
 endShape();
}

void drawShooter()
{
  stroke(85, 107, 47);
  strokeWeight(1);
  fill(85, 107, 47);
  
  beginShape();
  vertex(shooterx - width * 0.01, shipHeight);
  vertex(shooterx - width * 0.01, shootery + shipHeight / 2);
  vertex(shooterx + width * 0.01, shootery + shipHeight / 2);
  vertex(shooterx + width * 0.01, shipHeight);
  vertex(shooterx + width * 0.01, shootery + shipHeight / 2);
  vertex(shooterx + width * 0.01, shipHeight);
  vertex(shooterx - width * 0.01, shipHeight);
  endShape();
  
  beginShape();
  vertex(shooterx - width * 0.02, shootery + shipHeight / 2.25);
  vertex(shooterx - width * 0.02, shootery + shipHeight / 2);
  vertex(shooterx + width * 0.02, shootery + shipHeight / 2);
  vertex(shooterx + width * 0.02, shootery + shipHeight / 2.25);
  vertex(shooterx - width * 0.02, shootery + shipHeight / 2.25);
  endShape();
}

void drawCompass()
{
  fill(0);
  ellipse(width * 0.10, shipHeight + (height * 0.10), width * 0.14, height * 0.14);
  fill(255, 0, 0);
  textAlign(CENTER);
  text("N", width * 0.10, shipHeight + (height * 0.06));
  textAlign(RIGHT);
  text("E", width * 0.16, shipHeight + (height * 0.11));
  textAlign(CENTER, BOTTOM);
  text("S", width * 0.10, shipHeight + (height * 0.16));
  textAlign(LEFT);
  text("W", width * 0.04, shipHeight + (height * 0.11));
}

void drawAmmunition()
{
  fill(0);
  
  beginShape();
  vertex(width * 0.80, shipHeight + height * 0.04);
  vertex(width * 0.80, shipHeight + height * 0.24);
  vertex(width * 0.80, shipHeight + height * 0.04);
  vertex(width * 0.84, shipHeight + height * 0.04);
  vertex(width * 0.84, shipHeight + height * 0.24);
  vertex(width * 0.80, shipHeight + height * 0.24);
  endShape();
  
  textAlign(CENTER);
  text("Ammunition", width * 0.82, shipHeight + height * 0.27);
}

void drawFuel()
{
  fill(0);
  
  beginShape();
  vertex(width * 0.90, shipHeight + height * 0.04);
  vertex(width * 0.90, shipHeight + height * 0.24);
  vertex(width * 0.90, shipHeight + height * 0.04);
  vertex(width * 0.94, shipHeight + height * 0.04);
  vertex(width * 0.94, shipHeight + height * 0.24);
  vertex(width * 0.90, shipHeight + height * 0.24);
  endShape();
  
  textAlign(CENTER);
  text("Fuel", width * 0.92, shipHeight + height * 0.27);
}

//will contain dots for other objects
void drawMap()
{
  fill(0);
  ellipse(width * 0.66, shipHeight + height * 0.06, width * 0.14, height * 0.14);
}

void drawSpeed()
{
  fill(0);
  ellipse(width * 0.30, shipHeight + height * 0.06, width * 0.14, height * 0.14);
  
  textAlign(CENTER);
  text("Speed", width * 0.30, shipHeight + height * 0.16);
}

void drawButtons()
{
  //accelorator
  stroke(0);
  strokeWeight(1);
  noFill();
  rect(width * 0.60, shipHeight +  height * 0.16, width * 0.15, height * 0.04);
  textAlign(CENTER);
  text("Accelerator", width * 0.68, shipHeight + height * 0.19);
  
  //on/off swicth
  rect(width * 0.46, shipHeight + height * 0.27, width * 0.12, height * 0.04, 7);
  textAlign(CENTER);
  text("Power", width * 0.52, shipHeight + height * 0.30);
  
  //shoot
  rect(width * 0.44, shipHeight +height * 0.01, width * 0.12, height * 0.04, width * 0.01);
  textAlign(CENTER);
  text("Shoot", width * 0.50, shipHeight + height * 0.04);
  
  //buttons to move the shooter and the aimer
  triangle(width * 0.50, shipHeight + height * 0.08, width * 0.48, shipHeight + height * 0.10, width * 0.52, shipHeight + height * 0.10);
  triangle(width * 0.54, shipHeight + height * 0.12, width * 0.54, shipHeight + height * 0.16, width * 0.56, shipHeight + height * 0.14);
  triangle(width * 0.50, shipHeight + height * 0.20, width * 0.48, shipHeight + height * 0.18, width * 0.52, shipHeight + height * 0.18);
  triangle(width * 0.46, shipHeight + height * 0.12, width * 0.46, shipHeight + height * 0.16, width * 0.44, shipHeight + height * 0.14);
  
  //wheel
  stroke(0);
  strokeWeight(7);
  arc(width * 0.22, shipHeight + height * 0.24, width * 0.14, height * 0.14, -0.75, 0.7f + QUARTER_PI + HALF_PI + QUARTER_PI, PIE);
  line(width * 0.22, shipHeight + height * 0.24, width * 0.22, shipHeight + height * 0.31);
}