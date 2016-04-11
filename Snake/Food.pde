class Food extends Object 
{
  
  Food()
  {
    //Constructor chaining. Call a constructor in the super class
    super(width * 0.5f, height * 0.5f);
    println("In Food Default Constructor");
  }
  
    
    
  void position()
  {
    if(foodx == snx && foody == sny)
    {
      correct = true;
      snakel++;
      points++;
    }
  }
  
  void thing()
  {
    fill(250, 30, 10);
    
    while(correct)
    {
      int x = (int)random(1, width/ 10);
      int y = (int)random(1, height / 10);
      
      foodx = (int)(5 + x * 10);
      foody = (int)(5 + y * 10);
      
      for(int i = 0; i < snakel; i++)
      {
        if(x == snakex[i] && y == snakey[i])
        {
          correct = true;
          i = snakel;
        }
        else
        {
          correct = false;
        }
      }
    }
    rect(foodx - 5, foody - 5, w, h);
  }
}