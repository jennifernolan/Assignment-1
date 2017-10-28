class Aimer
{
  float x, y;
  
  Aimer()
  {
    this.x = (width / 6) * 3;
    this.y = (height / 6) * 1;
  }
  
  void render()
  {
    if(y < (height / 6) * 3)
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
    
    if(keyPressed)
    {
      if(key == ' ')
      {
        stroke(0, 255, 0);
        line((width / 6) * 3, (height / 6) * 3.6, x, y);
      }
    }
  }
  
}