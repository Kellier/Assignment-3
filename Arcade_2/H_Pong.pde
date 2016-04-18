class H_Pong extends Obj
{
  float br = 10;
  
  H_Pong()
  {
    super(width * 0.5f, height * 0.5f, 50);
  }
  
  H_Pong(float startx, float starty)
  {
    super(startx, starty, 50);
  }
  
  void position()
  {
    if((pos.x >= wallx + br) && (pos.x <= (wallx + br) + w) && (pos.y >= mouseY))
    {
      speedx = -speedx;
    }
    
    if(pos.y > 315)
    {
      speedy = -speedy;
    }
    
    if(pos.y < 680)
    {
      speedy = -speedy;
    }
    
    if(pos.x > 646)
    {
      speedx = -speedx;
    }
    
    if(pos.x < 353)
    {
      speedx = -speedx;
    }
    
    if(mouseY < 295)
    {
      mouseY = 295;
    }
    
    if(mouseY > height)
    {
      mouseY = height;
    }
    
    pos.x = pos.x + speedx;
    pos.y = pos.y + speedy;
  }
  
  void thing()
  {
    pushMatrix();
    translate(pos.x, pos.y);
    stroke(7, 29, 103);
    fill(7, 29, 103);
    ellipse(0, 0, br * 2, br * 2);
    popMatrix();
    
    stroke(245, 250, 20);
    fill(245, 250, 20);
    rect(wallx, mouseY, w, h);
  }
  
  void newgame()
  {
  }
}