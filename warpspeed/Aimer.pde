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
      textSize(12);
      text("[X]", x, y);
    }
  }
  
  void key()
  {
    if(keyPressed)
    {
      if(key == CODED)
      {
        if(keyCode == RIGHT && x < width / 2)
        {
          x = x + 5;
        }
        if(keyCode == LEFT && x > -width / 2)
        {
          x = x - 5;
        }
        if(keyCode == UP && y > -height / 2) 
        {
          y = y - 5;
        }
        if(keyCode == DOWN && y < (height / 8))
        {
          y = y + 5;
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