class H_Snake extends Object
{
  H_Snake()
  {
    super(width * 0.5f, height * 0.5f, 50);
    println("In H_Snake Default Constructor");
  }
  
  H_Snake(float startx, float starty, color c)
  {
    super(startx, starty, 50);
    this.c = c;
  }
  
  void position()
  {
    
  }
  
  void thing()
  {
    pushMatrix();
    translate(pos.x, pos.y);
    stroke(c);
    fill(c);
    rect(0, 0, w, h);
    popMatrix();
    
    stroke(250, 30, 10);
    fill(250, 30, 10);
    rect(foodx, foody, w, w);
    
  }
    
  
}