class Radar
{
  float cx, cy;
  float radius;
  float theta;
  float speed;
  float frequency;
  color c;
  
  Radar(float radius, float frequency, color c)
  {
   this.cx = (width / 6) * 4;
   this.cy = (height / 6) * 4.2;
   this.radius = radius;
   this.frequency = frequency;
   this.speed = (TWO_PI / 160.0) * frequency;
   this.theta = 0;
   this.c = c;
  }
  
  void update()
  {
    theta += speed;
  }
  
  void render()
  {
    stroke(255, 0, 0);
    fill(0);
    ellipse(cx, cy, radius / 2, radius / 2);
    
    noStroke();
    fill(255, 255, 0);
    ellipse(cx - 17, cy, radius / 10, radius / 10);
    
    noStroke();
    fill(255, 255, 0);
    ellipse(cx + 28, cy, radius / 20, radius / 20);
    
    noStroke();
    fill(255, 255, 0);
    ellipse(cx + 3, cy - 15, radius / 20, radius / 20);
    
    noStroke();
    fill(255, 255, 0);
    ellipse(cx, cy + 27, radius / 15, radius / 15);
    
    int trailLength = 5;
    float redIntensity = 255 / (float)trailLength;
    for(int i = 0; i <trailLength; i ++)
    {
      stroke(0, i * redIntensity, 0);
      float x = cx + sin(theta + i * speed) * radius / 4;
      float y = cy - cos(theta + i * speed) * radius / 4;
      line(cx, cy, x, y);
    }
  }
}