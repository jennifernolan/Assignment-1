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
    fill(85, 107, 47);
    stroke(85, 107, 47);
  
    beginShape();
    vertex(x - 2, y - 2);
    vertex(x - 2, y + 102);
    vertex(x + 17, y + 102);
    vertex(x + 17, y - 2);
    vertex(x - 2, y - 2);
    endShape();
    
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
    textAlign(LEFT);
    fill(255);
    textSize(8);
    text("900", linex - 17, y + 13);
    text("800", linex - 17, y + 23);
    text("700", linex - 17, y + 33);
    text("600", linex - 17, y + 43);
    text("500", linex - 17, y + 53);
    text("400", linex - 17, y + 63);
    text("300", linex - 17, y + 73);
    text("200", linex - 17, y + 83);
    text("100", linex - 17, y + 93);

    fill(0);
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