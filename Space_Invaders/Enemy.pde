class Enemy extends Object
{
  Enemy()
  {
    // Constructor chaining. Call a constructor in the super class
    super(width * 0.5f, height  * 0.5f, 20);     
    println("In Enemy Default Constructor");
  }
  
  Enemy(color c)
  {
    this.c = c;
  }
  
  void position()
  {
    
  }
  
  void thing()
  {
    stroke(c);
    line(enemyx, enemyy, enemyx - 20, enemyy - 20);
    line(enemyx - 20, enemyy - 20, enemyx - 20, enemyy + 40);
    line(enemyx - 20, enemyy + 40, enemyx, enemyy);
    line(enemyx, enemyy, enemyx + 20, enemyy - 20);
    line(enemyx + 20, enemyy - 20, enemyx + 20, enemyy + 40);
    line(enemyx + 20, enemyy + 40, enemyx, enemyy);  
  }
}