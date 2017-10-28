class Compass
{
  float cx, cy;
  float radius;
  
  Compass(float radius)
  {
   this.cx = (width / 6) * 0.5;
   this.cy = (height / 6) * 4.9;
   this.radius = radius;
  }
  
  void render()
  {
    stroke(255, 0, 0);
    fill(0);
    ellipse(cx, cy, (radius / 5) * 3, (radius / 5) * 3);
    line(cx, cy, cx + 10, cy - 25);
    
    fill(255, 0, 0);
    textAlign(CENTER);
    text("N", (width / 6) * 0.5, (height / 6) * 4.7);
    textAlign(RIGHT);
    text("E", (width / 6) * 0.8, (height / 6) * 4.95);
    textAlign(CENTER, BOTTOM);
    text("S", (width / 6) * 0.5, (height / 6) * 5.2);
    textAlign(LEFT);
    text("W", (width / 6) * 0.2, (height / 6) * 4.95);
  }
}