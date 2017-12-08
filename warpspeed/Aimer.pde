class Aimer
{
  float x, y;
  
  Aimer()
  {
    this.x = 0;
    this.y = -height / 2 * 0.5;
  }
  
  //while the aimer is not underneath the ship
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
      //movement of aimer up, down, left and right
      if(key == CODED)
      {
        if(keyCode == RIGHT /*&& x < width / 2*/)
        {
          x = x + 5;
          //make the aimer wrap around the screen
          if(x > width/2)
          {
            x = -width / 2;
          }
        }
        if(keyCode == LEFT /*&& x > -width / 2*/)
        {
          x = x - 5;
          //make the aimer wrap around the screen
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
      }
    } 
    
    if(keyPressed)
    {
      //when the space key is used to shoot a line / laser goes from the ship to the aimers position on the screen
      if(key == ' ' && y < height / 8)
      {
        strokeWeight(4);
        stroke(0, 255, 0);
        line(0, (height / 8), x, y);
      }
    }
  }
}