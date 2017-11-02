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
   this.cy = (height / 8) * 1.7;
   //this.lineX = (width / 6) * 1.7 - 31;
   //this.lineY = (height / 6) * 4.2 + 15;
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
    theta2 += speed / 2;
  }
  
  void render()
  {
    stroke(255, 0, 0);
    fill(0);
    ellipse(cx, cy, radius /2, radius / 2);
    //line(cx, cy, lineX, lineY);
    textAlign(CENTER);
    text("Speed", -width + 400, (height / 8) * 2.5);
    
    stroke(255);
    fill(255);
    line(x - radius / 4 + 13, y + 11, x - 31, y + 15);
    line(x - radius / 4, y, x - 25, y);
    line(x - radius / 4 + 13, y - 11, x - 31, y - 15);
    line(x - radius / 4 + 21, y - 19, x - 19, y - 28);
    line(x, y - radius / 4, x, y - 25);
    line(x - radius / 4 + 49, y - 21, x + 19, y - 28);
    line(x - radius / 4 + 56, y - 11, x + 30, y - 15);
    line(x + radius / 4, y, x + 25, y);
    line(x - radius / 4 + 58, y + 11, x + 31, y + 15);
  }
  
  void keyPressed()
  {
       if(key == 'a' || key == 'A')
       {
         int trailLength = 1;
         for(int i = 0; i < trailLength; i ++)
         {
          stroke(255, 0, 0);
          float lineX = x + sin(theta + i * speed) * (radius / 5) * 1.3;
          float lineY = y - cos(theta + i * speed) * (radius / 5) * 1.3;
          line(cx, cy, lineX, lineY);
         }
       }
  }
 
}