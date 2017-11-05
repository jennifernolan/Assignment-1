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
   this.cx = -width + 300;
   this.cy = (height / 8) * 2;
   this.x = -width + 330;
   this.y = (height / 8) * 2;
   this.radius = radius;
   this.nx = -width + 300;
   this.ny = (height / 8) * 1.7;
   this.ex = -width + 325;
   this.ey = (height / 8) * 2.07;
   this.sx = -width + 300;
   this.sy = (height / 8) * 2.5;
   this.wx = -width + 275;
   this.wy = (height / 8) * 2.07;
   this.frequency = frequency;
   this.speed = (QUARTER_PI / 30.0) * frequency;
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
  
    if (keyPressed)
    {
      if(key == CODED)
      {
        if(keyCode == RIGHT)
        {
          int trailLength = 1;
          for(int i = 0; i < trailLength; i ++)
          {
            float x = cx - sin(theta + i * speed) * (radius / 5) * 1.5;
            float y = cy + cos(theta + i * speed) * (radius / 5) * 1.5;
            line(cx, cy, x, y);
          }
        }
       
        if(keyCode == LEFT) // TRY FIX SO LINE GOES FROM SAME PLACE AS ABOVE (CURRENTLY GOING FROM EXACTLY THE OTHER SIDE OF THE CIRCLE)
        {
          int trailLength = 1;
          for(int i = 0; i < trailLength; i ++)
          {
            float x = cx + sin(theta + i * speed) * (radius / 5) * 1.5;
            float y = cy + cos(theta + i * speed) * (radius / 5) * 1.5;
            line(cx, cy, x, y);
          }
        }
      }
    }
  }
}