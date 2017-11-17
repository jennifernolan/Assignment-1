class Speedometer
{
  float cx, cy;
  float lineX, lineY;
  float x, y;
  float radius;
  float theta, theta2;
  float frequency;
  float speed;
  
  Speedometer(float radius, float frequency)
  {
   this.cx = -width + 400;
   this.cy = (height / 8) * 1.8;
   this.lineX = -width + 370;
   this.lineY = (height / 8) * 1.7 + 16;
   this.radius = radius;
   this.x = -width + 400;
   this.y = (height / 8) * 1.7;
   this.frequency = frequency;
   this.speed = (TWO_PI / 60.0) * frequency;
   this.theta = 0;
   this.theta2 = 0;
  }
  
  void update()
  {
    theta += speed;
  }
  
  void render()
  {
    stroke(85, 107, 47);
    strokeWeight(2);
    fill(0);
    ellipse(cx, cy, radius /2, radius / 2);
    strokeWeight(1);
    //line(cx, cy, lineX, lineY);
    textAlign(CENTER);
    text("Speed", -width + 400, (height / 8) * 2.8);
    
    stroke(255);
    fill(255);
    line(x - radius / 4 + 3, y + 21, x - 31, y + 17);
    fill(0, 255, 0);
    textSize(8);
    text("0", x - 26, y + 20);
    line(x - radius / 4, y, x - 30, y);
    fill(0, 255, 0);
    text("10", x - 24, y + 4);
    line(x - radius / 4 + 10, y - 21, x - 25, y - 14);
    fill(0, 255, 0);
    text("20", x - 18, y - 8);
    line(x - radius / 4 + 34, y - 24, x - 18, y - 35);
    fill(0, 255, 0);
    text("30", x - 11, y - 16);
    line(x, y - radius / 4 + 7, x, y - 27);
    fill(0, 255, 0);
    text("40", x, y - 18);
    line(x - radius / 4 + 58, y - 24, x + 20, y - 33);
    fill(0, 255, 0);
    text("50", x + 11, y - 16);
    line(x - radius / 4 + 70, y - 14, x + 36, y - 21);
    fill(0, 255, 0);
    text("60", x + 18, y - 8);
    line(x + radius / 4, y, x + 27, y);
    fill(0, 255, 0);
    text("70", x + 20, y + 4);
    line(x - radius / 4 + 86, y + 21, x + 28, y + 17);
    fill(0, 255, 0);
    text("80", x + 20, y + 20);
    
    textAlign(CENTER);
    fill(255, 0, 0);
    text("x10", x, y + 30);
    text("km/h", x, y + 40);
  }
  
  void keyReleased()
  {
   if(key != 'a' || key != 'A')
   {
      stroke(255, 0, 0);
      line(cx, cy, lineX, lineY);
   }
   if(key == 'a' || key == 'A')
   {
     stroke(0, 0, 0);
     line(cx, cy, lineX, lineY);
   }
  }
  
  void keyPressed()
  {
       if(key == 'a' || key == 'A')
       {
         int trailLength = 1;
         for(int i = 0; i < trailLength; i ++)
         {
          stroke(255, 0, 0);
          float lineX = cx + sin(theta + i * speed) * radius / 4;
          float lineY = cy - cos(theta + i * speed) * radius / 4;
          line(cx, cy, lineX, lineY);
         }
       }
  }
 
}