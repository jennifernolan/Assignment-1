class Compass
{
  float cx, cy;
  float x, y, x2, y2;
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
   this.x2 = -width + 270;
   this.y2 = (height / 8) * 2;
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
    if(keyCode == RIGHT)
    {
      theta += speed;
    }
    if(keyCode == LEFT)
    {
      theta -= speed;
    }
  }
  
  void render()
  {
    stroke(85, 107, 47);
    strokeWeight(2);
    fill(0);
    ellipse(cx, cy, (radius / 5) * 3, (radius / 5) * 3);
    
    strokeWeight(1);
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
            stroke(255, 0, 0);
            float x = cx + sin(theta + i * speed) * (radius / 5) * 1.4;
            float y = cy - cos(theta + i * speed) * (radius / 5) * 1.4;
            line(cx, cy, x, y);
            stroke(0, 255, 0);
            float x2 = cx - sin(theta + i * speed) * (radius / 5) * 1.4;
            float y2 = cy + cos(theta + i * speed) * (radius / 5) * 1.4;
            line(cx, cy, x2, y2);
          }
        }
        else if(keyCode == LEFT)
        {
          int trailLength = 1;
          for(int i = 0; i < trailLength; i ++)
          {
            stroke(255, 0, 0);
            float x = cx + sin(theta + i * speed) * (radius / 5) * 1.4;
            float y = cy - cos(theta + i * speed) * (radius / 5) * 1.4;
            line(cx, cy, x, y);
            stroke(0, 255, 0);
            float x2 = cx - sin(theta + i * speed) * (radius / 5) * 1.4;
            float y2 = cy + cos(theta + i * speed) * (radius / 5) * 1.4;
            line(cx, cy, x2, y2);
          }
        }
      }
    }
  }
}