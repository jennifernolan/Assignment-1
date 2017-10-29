class Ammunition
{
  float x, y;
  float linex, liney;
  
  Ammunition()
  {
    this.x = (width / 6) * 4.4;
    this.y = (height / 6) * 4.5;
    this.linex = (width / 6) * 4.4;
    this.liney = (height / 6) * 4.5;
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
    
    stroke(255, 0, 0);
    line(linex, liney, linex + 15, liney);
    textAlign(LEFT);
    text("Level", linex + 17, liney);
  
    if(keyPressed)
    {
       if(key == ' ')
      {
        if(liney < y + 100)
        {
          liney = liney + 0.1;
        }
      }
    }
  }
  
}