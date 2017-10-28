class Shooter
{
  float x, y;
  
  Shooter()
  {
    this.x = (width / 6) * 2.95;
    this.y = (height / 6) * 2;
  }
  
  void render()
  {
    stroke(85, 107, 47);
    fill(85, 107, 47);
    rect(x, y, 10, 140);
    rect(x - 5, y, 20, 20);
    
    if(keyPressed)
    {
      if(keyCode == RIGHT && x + 15 < width)
      {
        x ++;
      }
      if(keyCode == LEFT && x - 5 > 0)
      {
        x --;
      }
    }
  }
  
}