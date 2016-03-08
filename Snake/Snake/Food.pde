class Food extends Object
{
  
  Food()
  {
    //Constructor chaining. Call a constructor in the super class
    super(width * 0.5f, height * 0.5f, 50);
    println("In Food Default Constructor");
  }
  
  Food(float startx, float starty, color c)
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
    rect(0, 0, w, w);
    popMatrix();
  }
}