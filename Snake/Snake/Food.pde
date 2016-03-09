class Food extends Object
{
  
  Food()
  {
    //Constructor chaining. Call a constructor in the super class
    super(width * 0.5f, height * 0.5f, 50);
    println("In Food Default Constructor");
  }
  
  void position()
  {
    
  }
  
  void thing()
  {
    stroke(250, 30, 10);
    fill(250, 30, 10);
    rect(foodx, foody, w, w);
  }
}