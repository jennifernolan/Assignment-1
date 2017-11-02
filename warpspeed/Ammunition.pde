class Ammunition
{
  float x, y;
  float linex, liney;
  
  Ammunition()
  {
    this.x = (width / 30) * 8;
    this.y = (height / 8) * 2;
    this.linex = (width / 30) * 8 ;
    this.liney = (height / 8) * 2;
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