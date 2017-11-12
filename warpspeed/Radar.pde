class Radar
{
  float cx, cy;
  float cx1, cy1;
  float radius;
  float theta;
  float speed;
  float frequency;
  color c;
  
  Radar(float radius, float frequency, color c)
  {
   this.cx = width / 30 * 4;
   this.cy = (height / 8) * 2;
   this.cx1 = width / 30 * 4;
   this.cy1 = (height / 8) * 2;
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
    ellipse(cx1 - 17, cy1, radius / 10, radius / 10);
    
    noStroke();
    fill(255, 255, 0);
    ellipse(cx1 + 28, cy1, radius / 20, radius / 20);
    
    noStroke();
    fill(255, 255, 0);
    ellipse(cx1 + 3, cy1 - 15, radius / 20, radius / 20);
    
    noStroke();
    fill(255, 255, 0);
    ellipse(cx1, cy1 + 27, radius / 15, radius / 15);
    
    int trailLength = 5;
    float redIntensity = 255 / (float)trailLength;
    for(int i = 0; i <trailLength; i ++)
    {
      stroke(0, i * redIntensity, 0);
      float x = cx + sin(theta + i * speed) * radius / 4;
      float y = cy - cos(theta + i * speed) * radius / 4;
      line(cx, cy, x, y);
    }
    
    if (keyPressed)
    {
      if(key == CODED)
      {
        if(keyCode == RIGHT)
        {
          if(cx1 == radius / 2)
          {
           
          }
          else
          {
            cx1 ++;
          }
        }
        if(keyCode == LEFT)
        {
          if(cx1 == 50)
          {
            
          }
          else
          {
            cx1 --;
          }
        }
        if(keyCode == UP)
        {
          if(cy1 == 107)
          {
            
          }
          else
          {
            cy1 --;
          }
        }
        if(keyCode == DOWN)
        {
          if(cy1 == 128)
          {
            
          }
          else
          {
            cy1 ++;
          }
        }
      }
    }
    }
    
    void keyPressed()
    {
      if(key == 'a' || key == 'A')
      {
        if(cy1 == 107)
        {
            
        }
        else
        {
          cy1 --;
        }
      }
      if(key == 'f' || key == 'F')
      {
        speed = 0;
      }
      else
      {
        speed = (TWO_PI / 160.0) * frequency;
      }
    }
          
}