class Ship
{
  float shipHeight;
  
  Ship()
  {
    this.shipHeight = height / 0.3f;
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
   
   /*rect((width / 5) * 1, (height / 5) * 3, (width / 5) * 3, height);
   triangle((width / 5) * 1, (height / 5) * 3, (width / 5) * 1, height, 0, height);
   triangle(0, height, 0, (height / 5) * 4, (width / 5) * 1, (height / 5) * 3);
   triangle((width / 5) * 4, (height / 5) * 3, (width / 5) * 4, height, width, height);
   triangle(width, height, width, (height / 5) * 4, (width / 5) * 4, (height / 5) * 3); */
  }
}