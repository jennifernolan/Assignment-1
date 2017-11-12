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
    
    stroke(255);
    line(x + 3, y + 10, x + 12, y + 10);
    line(x + 3, y + 20, x + 12, y + 20);
    line(x + 3, y + 30, x + 12, y + 30);
    line(x + 3, y + 40, x + 12, y + 40);
    line(x + 3, y + 50, x + 12, y + 50);
    line(x + 3, y + 60, x + 12, y + 60);
    line(x + 3, y + 70, x + 12, y + 70);
    line(x + 3, y + 80, x + 12, y + 80);
    line(x + 3, y + 90, x + 12, y + 90);
    
    textAlign(CENTER);
    textSize(12);
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
          liney = liney + 0.10;
        }
      }
    }
    
  }
    void keyReleased()
    {
        if(liney > y)
        {
          liney = liney - 0.05;
        }
      
    }
  
}