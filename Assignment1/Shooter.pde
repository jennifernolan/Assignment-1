class Shooter extends Aimer
{
  float sx, sy;

  Shooter(float x, float y)
  {
    super(x, y);
    this.sx = (width / 6) * 2.95;
    this.sy = (height / 6) * 3.62;
  }

  void render()
  {
    stroke(85, 107, 47);
    fill(85, 107, 47);
    rect(sx, sy, 10, -140);
    //rect(x - 5, y, 20, 20);
    stroke(255, 0, 0);
    point(sx, sy);
  }

  void update()
  {
    if (keyPressed)
    {
      if (keyCode == RIGHT)
      {
        sx ++;
      }
      if (keyCode == LEFT)
      {
        sx --;
      }
      if(key == ' ')
      {
        stroke(0, 255, 0);
        line(x, sy - 140, x, y);
      }
    }
    if(keyPressed)
    {
      if(key == CODED)
      {
        if(keyCode == RIGHT && x < width)
        {
          x ++;
        }
        if(keyCode == LEFT && x > 0)
        {
          x --;
        }
        if(keyCode == UP && y > 0) 
        {
          y --;
        }
        if(keyCode == DOWN && y < (height / 6) * 3)
        {
          y ++;
        }
      }
    }
     if(keyCode == LEFT /*&& x > -width / 2*/)
        {
          x = x - 5;
          if(x < -width / 2)
          {
            x = width / 2;
          }
        }
        if(keyCode == UP && y > -height / 2) 
        {
          y = y - 5;
        }
        if(keyCode == DOWN && y < (height / 8))
        {
          y = y + 5;
        }
        if(keyCode == RIGHT && x > width/2)
        {
          x = -width / 2;
        }
  }
}