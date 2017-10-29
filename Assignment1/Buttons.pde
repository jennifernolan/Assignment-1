class Buttons
{
  float accx, accy;
  float onoffx, onoffy;
  float shootx, shooty;
  float x, y;
  float wheelx, wheely;
  float shipHeight;
  
  Buttons()
  {
    this.accx = (width / 6) * 3.3;
    this.accy = (height / 6) * 5.1;
    this.onoffx = (width / 6) * 2.55;
    this.onoffy = (height / 6) * 5.7;
    this.shootx = (width / 6) * 2.55;
    this.shooty = (height / 6) * 3.8;
    this.x = (width / 6) * 3;
    this.y = (height / 6) * 4.3;
    this.wheelx = (width / 6) * 1.7;
    this.wheely = (height / 6) * 5.3;
    this.shipHeight = height * 0.3f;
  }
  
  void render()
  {
    //Accelorator
    stroke(0);
    noFill();
    rect(accx, accy, width / 7.5, height / 25);
    textAlign(CENTER);
    text("Accelerator", (width / 6) * 3.73, (height / 6) * 5.25);
    
    //Power
    rect(onoffx, onoffy, width / 7.5, height / 25, 7);
    textAlign(CENTER);
    text("Power : On", (width / 6) * 2.95, (height / 6) * 5.85);
    
    //shoot
    rect(shootx, shooty, width / 7.5, height / 25, 7);
    textAlign(CENTER);
    text("Shoot", (width / 6) * 2.95, (height / 6) * 3.95);
    
    //buttons to move the shooter and aimer
    triangle(x, y, x + 10, y + 15, x - 10, y + 15);
    triangle(x + 20, y + 20, x + 35, y + 30, x + 20, y + 40);
    triangle(x, y + 60, x + 10, y + 45, x - 10, y + 45);
    triangle(x  - 20, y + 20, x - 35, y + 30, x - 20, y + 40);
    
    //wheel
    fill(0);
    arc(wheelx, wheely, width * 0.14, height * 0.14, -0.75, 0.7f + QUARTER_PI + HALF_PI + QUARTER_PI, PIE);
    fill(85, 107, 47);
    arc((width / 6) * 1.7, (height / 6) * 5.35, width * 0.11, height * 0.10, -0.75, 0.7f + QUARTER_PI + HALF_PI + QUARTER_PI, PIE);

  }
    
  
  void key()
  {
    if(keyPressed)
    {
      if(key == ' ')
      {
        redraw();
        fill(0);
        rect(shootx, shooty, width / 7.5, height / 25, 7);
        fill(255);
        textAlign(CENTER);
        text("Shoot", (width / 6) * 2.95, (height / 6) * 3.95);
      }
    }
    
    if(keyPressed)
    {
      if(key == CODED)
      {
        if(keyCode == RIGHT)
        {
          redraw();
          fill(0);
          triangle(x + 20, y + 20, x + 35, y + 30, x + 20, y + 40);
        }
        if(keyCode == LEFT)
        {
          redraw();
          fill(0);
          triangle(x  - 20, y + 20, x - 35, y + 30, x - 20, y + 40);
        }
        if(keyCode == UP) 
        {
          redraw();
          fill(0);
          triangle(x, y, x + 10, y + 15, x - 10, y + 15);
        }
        if(keyCode == DOWN)
        {
         redraw();
         fill(0);
         triangle(x, y + 60, x + 10, y + 45, x - 10, y + 45);
        }
      }
    }
    
    if(keyPressed)
    {
      if(key == 'a' || key == 'A')
      {
        redraw();
        fill(0);
        rect(accx, accy, width / 7.5, height / 25);
        fill(255);
        textAlign(CENTER);
        text("Accelerator", (width / 6) * 3.73, (height / 6) * 5.25);
      }
    }
  }
    
  void keyPressed()
    {
      if(key == 'o' || key == 'O')
      {
        redraw();
        noFill();
        stroke(0);
        rect(onoffx, onoffy, width / 7.5, height / 25, 7);
        fill(0);
        textAlign(CENTER);
        text("Power : On", (width / 6) * 2.95, (height / 6) * 5.85);
        fill(85, 107, 47);
        arc((width / 6) * 1.7, (height / 6) * 5.35, width * 0.11, height * 0.10, -0.75, 0.7f + QUARTER_PI + HALF_PI + QUARTER_PI, PIE);
      }
      if(key == 'f' || key == 'F')
      {
        redraw();
        fill(0);
        rect(onoffx, onoffy, width / 7.5, height / 25, 7);
        fill(255);
        textAlign(CENTER);
        text("Power : 0ff", (width / 6) * 2.95, (height / 6) * 5.85);
        fill(0, 51, 0);
        arc((width / 6) * 1.7, (height / 6) * 5.35, width * 0.11, height * 0.10, -0.75, 0.7f + QUARTER_PI + HALF_PI + QUARTER_PI, PIE);
      }
    }
    
}