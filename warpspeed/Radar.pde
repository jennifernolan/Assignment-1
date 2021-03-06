class Radar
{
  float cx, cy;
  float cx1, cy1, cx2, cy2, cx3, cy3, cx4, cy4;
  float radius;
  float theta;
  float speed;
  float frequency;
  color c;
  
  Radar(float radius, float frequency, color c)
  {
   this.cx = width / 30 * 4;
   this.cy = (height / 8) * 2;
   //smaller circles within the radars coordinates
   this.cx1 = width / 30 * 4;
   this.cy1 = (height / 8) * 2;
   this.cx2 = width / 30 * 4;
   this.cy2 = (height / 8) * 2;
   this.cx3 = width / 30 * 4;
   this.cy3 = (height / 8) * 2;
   this.cx4 = width / 30 * 4;
   this.cy4 = (height / 8) * 2;
   this.radius = radius;
   this.frequency = frequency;
   this.speed = (TWO_PI / 160.0) * frequency;
   this.theta = 0;
   this.c = c;
  }
  
  void update()
  {
    theta += speed;
  }
  
  void render()
  {
    stroke(85, 107, 47);
    strokeWeight(2);
    fill(0);
    ellipse(cx, cy, radius / 2, radius / 2);
    
    //drawing the smaller circles
    noStroke();
    strokeWeight(1);
    fill(255, 255, 0);
    ellipse(cx1 - 17, cy1, radius / 10, radius / 10);
    
    noStroke();
    fill(255, 255, 0);
    ellipse(cx2 + 28, cy2, radius / 20, radius / 20);
    
    noStroke();
    fill(255, 255, 0);
    ellipse(cx3 + 3, cy3 - 15, radius / 20, radius / 20);
    
    noStroke();
    fill(255, 255, 0);
    ellipse(cx4, cy4 + 27, radius / 15, radius / 15);
    
    //radar continues to move around
    int trailLength = 3;
    float greenIntensity = 255 / (float)trailLength;
    for(int i = 0; i <trailLength; i ++)
    {
      stroke(0, i * greenIntensity, 0);
      float x = cx + sin(theta + i * speed) * radius / 4;
      float y = cy - cos(theta + i * speed) * radius / 4;
      line(cx, cy, x, y);
    }
    
    if (keyPressed)
    {
      if(key == CODED)
      {
        //move the minature circles around in the radar
        if(keyCode == RIGHT)
        {
          if(cx1 == 120.0)
          {
           cx1 = 502;
           //cy1 = 502;
          }
          else
          {
            cx1++;
          }
          if(cx2 == 79)
          {
           cx2 = 502;
           //cy2 = 502;
          }
          else
          {
           cx2 ++;
          }
          if(cx3 == 103)
          {
           cx3 = 502;
           //cy3 = 502;
          }
          else
          {
           cx3 ++;
          }
          if(cx4 == 104)
          {
           cx4 = 502;
           //cy4 = 502;
          }
          else
          {
           cx4 ++;
          }
          //get the small circles to wrap around like the aimer
          if(cx1 == 502)
          { 
            cx1 = 40.0;
          }
          if(cx2 == 502)
          {
            cx2 = -7;
          }
          if(cx3 == 502)
          {
            cx3 = 20.0;
          }
          if(cx4 == 502)
          {
            cx4 = 23.0;
          }
        }
        
        if(keyCode == LEFT)
        {
          //move the minature circles around in the radar
          if(cx1 == 46.0)
          {
            cx1 = 502;
            //cy1 = 502;
          }
          else
          {
            cx1 --;
          }
          if(cx2 == -7)
          {
            cx2 = 502;
           // cy2 = 502;
          }
          else
          {
            cx2 --;
          }
          if(cx3 == 20.0)
          {
            cx3 = 502;
           // cy3 = 502;
          }
          else
          {
            cx3 --;
          }
          if(cx4 == 28.0)
          {
            cx4 = 502;
            //cy4 = 502;
          }
          else
          {
            cx4 --;
          }
          //get the small circles to wrap around like the aimer
          if(cx1 == 502)
          { 
            cx1 = 120.0;
          }
          if(cx2 == 502)
          {
            cx2 = 79;
          }
          if(cx3 == 502)
          {
            cx3 = 103;
          }
          if(cx4 == 502)
          {
            cx4 = 104;
          }
        }
        
        if(keyCode == UP)
         {
           //if the aimer is moving up get the circles to stay on the radar and stop at the edge
           if(cy3 >= 97 && cy4 <=502)
           {
             cy1--;
             cy2--;
             cy3--;
             cy4--;
           }
         }
         
         if(keyCode == DOWN)
         {
           //if the aimer is moving down get the circles to stay on the radar and stop at the edge
           if(cy4 <= 136)
           {
             cy1++;
             cy2++;
             cy3++;
             cy4++;
           }
         }
       }
     }
    }
    
    void keyPressed()
    {
      //when accelerating the circles move up the radar and disappear off screen
      if(key == 'a' || key == 'A')
      {
        if(cy1 == 90)
          {
            cx1 = 502;
            cy1 = 502;
          }
          else
          {
            cy1 --;
          }
          if(cy2 == 91)
          {
            cx2 = 502;
            cy2 = 502;
          }
          else
          {
            cy2 --;
          }
          if(cy3 == 97)
          {
            cx3 = 502;
            cy3 = 502;
          }
          else
          {
            cy3 --;
          }
         if(cy4 == 58)
          {
            cx4 = 502;
            cy4 = 502;
          }
          else
          {
            cy4 --;
          }
      }
      //when the ship is powered off the radar stops spinning
      if(key == 'f' || key == 'F')
      {
        speed = 0;
      }
      else
      {
        speed = (TWO_PI / 160.0) * frequency;
      }
    }
          
}