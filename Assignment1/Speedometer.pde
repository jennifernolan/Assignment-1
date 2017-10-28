class Speedometer
{
  float cx, cy;
  float radius;
  
  Speedometer(float radius)
  {
   this.cx = (width / 6) * 2;
   this.cy = (height / 6) * 4;
   this.radius = radius;
  }
  
  void render()
  {
    stroke(255, 0, 0);
    fill(0);
    ellipse(cx, cy, radius / 2, radius / 2);
    line(cx, cy, cx, cy - 25);
    textAlign(CENTER);
    text("Speed", (width / 6) * 2, (height / 6) * 4.5);
  }
}