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
   vertex(0, (height / 5) * 4);
   vertex((width / 5) * 1, (height / 5) * 3);
   vertex((width / 5) * 4, (height / 5) * 3);
   vertex(width, (height / 5) * 4);
   vertex(width, height);
   vertex(0, height);
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
        vertex(0, (height / 5) * 4);
        vertex((width / 5) * 1, (height / 5) * 3);
        vertex((width / 5) * 4, (height / 5) * 3);
        vertex(width, (height / 5) * 4);
        vertex(width, height);
        vertex(0, height);
        endShape();
      }
      if(key == 'f' || key == 'F')
      {
        redraw();
        stroke(0, 51, 0);
        fill(0, 51, 0);
        
        beginShape();
        vertex(0, (height / 5) * 4);
        vertex((width / 5) * 1, (height / 5) * 3);
        vertex((width / 5) * 4, (height / 5) * 3);
        vertex(width, (height / 5) * 4);
        vertex(width, height);
        vertex(0, height);
        endShape();
      }
   }
    
}