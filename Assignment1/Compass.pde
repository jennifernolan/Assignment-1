class Compass
{
  float cx, cy;
  float x, y;
  float radius;
  float nx, ny;
  float ex, ey;
  float sx, sy;
  float wx, wy;
  float theta;
  float frequency;
  float speed;
  
  Compass(float radius, float frequency)
  {
   this.cx = (width / 6) * 0.5;
   this.cy = (height / 6) * 4.9;
   this.x = (width / 6) * 0.85;
   this.y = (height / 6) * 4.9;
   this.radius = radius;
   this.nx = (width / 6) * 0.5;
   this.ny = (height / 6) * 4.7;
   this.ex = (width / 6) * 0.8;
   this.ey = (height / 6) * 4.95;
   this.sx = (width / 6) * 0.5;
   this.sy = (height / 6) * 5.2;
   this.wx = (width / 6) * 0.2;
   this.wy = (height / 6) * 4.95;
   this.frequency = frequency;
   this.speed = (QUARTER_PI / 60.0) * frequency;
   this.theta = 0;
  }
  
  void update()
  {
    theta += speed;
  }
  
  void render()
  {
    stroke(255, 0, 0);
    fill(0);
    ellipse(cx, cy, (radius / 5) * 3, (radius / 5) * 3);
    //line(cx, cy, x, y);
    
    fill(255, 0, 0);
    textAlign(CENTER);
    text("N", nx, ny);
    textAlign(RIGHT);
    text("E", ex, ey);
    textAlign(CENTER, BOTTOM);
    text("S", sx, sy);
    textAlign(LEFT);
    text("W", wx, wy);
    
    if(keyPressed)
    {
      if(key == CODED)
      {
        if(keyCode == RIGHT)
        {
          int trailLength = 1;
          for(int i = 0; i < trailLength; i ++)
          {
            float x = cx + sin(theta + i * speed) * (radius / 5) * 1.5;
            float y = cy - cos(theta + i * speed) * (radius / 5) * 1.5;
            line(cx, cy, x, y);
          }
        }
        if(keyCode == LEFT) // TRY FIX SO LINE GOES FROM SAME PLACE AS ABOVE (CURRENT GOING FROM EXACTLY THE OTER SIDE OF THE CIRCLE)
        {
          int trailLength = 1;
          for(int i = 0; i < trailLength; i ++)
          {
            float x = cx - sin(theta - i * speed) * (radius / 5) * 1.5;
            float y = cy + cos(theta - i * speed) * (radius / 5) * 1.5;
            line(cx, cy, x, y);
          }
        }
      }
    }
    
  }
  
}