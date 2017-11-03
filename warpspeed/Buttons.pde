class Buttons
{
  float accx, accy;
  float onoffx, onoffy;
  float shootx, shooty;
  float x, y;
  float wheelx, wheely;
  
  Buttons()
  {
    this.accx = (width / 30) * 2;
    this.accy = (height / 8) * 3;
    this.onoffx = -width + 450;
    this.onoffy = (height / 8) * 3.6;
    this.shootx = -width + 450;
    this.shooty = (height / 8) * 1.2;
    this.x = -width + 475;
    this.y = (height / 8) * 2;
    this.wheelx = -width + 350;
    this.wheely = (height / 8) * 3;
  }
  
  void render()
  {
    //Accelorator
    stroke(0);
    noFill();
    rect(accx, accy, width / 7.5, height / 25);
    textAlign(CENTER);
    text("Accelerator", (width / 30) * 4.3, (height / 8) * 3.25);
    
    //Power
    rect(onoffx, onoffy, width / 7.5, height / 25, 7);
    textAlign(CENTER);
    text("Power : On", -width + 485, (height / 8) * 3.8);
    
    //shoot
    rect(shootx, shooty, width / 7.5, height / 25, 7);
    textAlign(CENTER);
    text("Shoot", -width + 485, (height / 8) * 1.4);
    
    //buttons to move the shooter and aimer
    triangle(x, y, x + 10, y + 15, x - 10, y + 15);
    triangle(x + 20, y + 20, x + 35, y + 30, x + 20, y + 40);
    triangle(x, y + 60, x + 10, y + 45, x - 10, y + 45);
    triangle(x  - 20, y + 20, x - 35, y + 30, x - 20, y + 40);
    
    //wheel
    fill(0);
    arc(wheelx, wheely, width * 0.14, height * 0.14, -0.75, 0.7f + QUARTER_PI + HALF_PI + QUARTER_PI, PIE);
    fill(85, 107, 47);
    arc(-width + 350, (height / 8) * 3.05, width * 0.11, height * 0.10, -0.75, 0.7f + QUARTER_PI + HALF_PI + QUARTER_PI, PIE);

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
        text("Shoot", -width + 485, (height / 8) * 1.4);
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
        text("Power : On", -width + 485, (height / 8) * 3.8);
        fill(85, 107, 47);
        arc(-width + 350, (height / 8) * 3.05, width * 0.11, height * 0.10, -0.75, 0.7f + QUARTER_PI + HALF_PI + QUARTER_PI, PIE);
      }
      if(key == 'f' || key == 'F')
      {
        redraw();
        fill(0);
        rect(onoffx, onoffy, width / 7.5, height / 25, 7);
        fill(255);
        textAlign(CENTER);
        text("Power : Off", -width + 485, (height / 8) * 3.8);
        fill(0, 51, 0);
        arc(-width + 350, (height / 8) * 3.05, width * 0.11, height * 0.10, -0.75, 0.7f + QUARTER_PI + HALF_PI + QUARTER_PI, PIE);
      }
      
      if(key == 'a' || key == 'A')
      {
        redraw();
        fill(0);
        stroke(255);
        rect(accx, accy, width / 7.5, height / 25);
        fill(255);
        textAlign(CENTER);
        text("Accelerator", (width / 30) * 4.3, (height / 8) * 3.25);
      }
      if(key == 's' || key == 'S')
      {
        redraw();
        noFill();
        stroke(0);
        rect(accx, accy, width / 7.5, height / 25);
        fill(0);
        textAlign(CENTER);
        text("Accelerator", (width / 30) * 4.3, (height / 8) * 3.25);
      }
    }
    
}