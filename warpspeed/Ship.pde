class Ship
{
  Ship()
  {
    
  }
  
  void render()
  {
    stroke(85, 107, 47);
    fill(85, 107, 47);
    
    beginShape();
    vertex(-width, height / 8 * 2);
    vertex(-width / 30 * 8, height / 8);
    vertex(width / 30 * 8, height / 8);
    vertex(width, height / 8 * 2);
    vertex(width, height);
    vertex(-width, height);
    endShape();
  }
  
  void keyPressed()
   {
      if(key == 'o' || key == 'O')
      {
        redraw();
        stroke(85, 107, 47);
        fill(85, 107, 47);
        
        beginShape();
        vertex(-width, height / 8 * 2);
        vertex(-width / 30 * 8, height / 8);
        vertex(width / 30 * 8, height / 8);
        vertex(width, height / 8 * 2);
        vertex(width, height);
        vertex(-width, height);
        endShape();
      }
      if(key == 'f' || key == 'F')
      {
        redraw();
        stroke(0, 51, 0);
        fill(0, 51, 0);
        
        beginShape();
        vertex(-width, height / 8 * 2);
        vertex(-width / 30 * 8, height / 8);
        vertex(width / 30 * 8, height / 8);
        vertex(width, height / 8 * 2);
        vertex(width, height);
        vertex(-width, height);
        endShape();
      }
   }
}