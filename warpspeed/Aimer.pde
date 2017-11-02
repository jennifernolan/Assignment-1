class Aimer
{
  float x, y;
  
  Aimer()
  {
    this.x = 0;
    this.y = 0;
  }
  
  void render()
  {
    if(y < height / 8)
    {
      fill(255, 0, 0);
      text("[X]", x, y);
    }
  }
  
    void key()
  {
    if(keyPressed)
    {
      if(key == CODED)
      {
        if(keyCode == RIGHT && x < width)
        {
          x ++;
        }
        if(keyCode == LEFT && x > -width)
        {
          x --;
        }
        if(keyCode == UP && y > -height) 
        {
          y --;
        }
        if(keyCode == DOWN && y < (height / 8))
        {
          y ++;
        }
      }
    } 
    
    if(keyPressed)
    {
      if(key == ' ')
      {
        stroke(0, 255, 0);
        line(0, (height / 8), x, y);
      }
    }
  }
}