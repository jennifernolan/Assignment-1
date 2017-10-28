class Ammunition
{
  float x, y;
  
  Ammunition()
  {
    this.x = (width / 6) * 4.5;
    this.y = (height / 6) * 4.5;
  }
  
  void render()
  {
    fill(0);
    stroke(0);
  
    beginShape();
    vertex(x, y);
    vertex(x, y + 100);
    vertex(x + 15, y + 100);
    vertex(x + 15, y);
    vertex(x, y);
    endShape();
    
    textAlign(CENTER);
    text("Ammunition", x + 5, y + 115);
    /*
    line(x, y, x, y + 100);
    line(x, y + 100, x + 15, y + 100);
    line(x + 15, y + 100, x + 15, y);
    line(x + 15, y, x, y);
    fill(0);*/
  }
}