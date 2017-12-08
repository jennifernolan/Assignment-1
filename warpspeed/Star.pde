class Star
{
  float x; 
  float y; 
  float z;
  
  float pz; //previous z position needed for moving the stars in warpspeed, z is causing x and y to change
  
  Star()
  {
    //negative width and height because of translation in warpspeed
    x = random(-width, width);
    y = random(-height, height);
    z = random(width);
    pz = z;
  }
  
  void update()
  {
    z = z - speed; 
    if(z < 1)
    {
      z = width;
      x = random(-width, width); //once the stars move off screen they reappear at new x and y values
      y = random(-height, height);
      pz = z; 
    }
  }
  
  void show()
  {
    fill(255);
    noStroke();
    strokeWeight(2);
    
    float sx = map(x / z, 0, 1, 0, width);//where the stars start originally
    float sy = map(y / z, 0, 1, 0, height);

    float r = map(z, 0, width, 5, 0); //maps the stars so that the closer to the ship the larger they appear
    ellipse(sx, sy, r, r);
    
    float px = map(x / pz, 0, 1, 0, width);//
    float py = map(y / pz, 0, 1, 0, height);
    
    pz = z;
    
    stroke(255);
    line(px, py, sx, sy); //line between the start x,y position and the new x,y position as x and y are moved by z
  }
}