class Player extends Object
{
  char move;
  char left;
  char right;
  
  Player()
  {
    //Constructor chaining. Call a constructor in the super class
    super(width * 0.5f, height * 0.5f, 50);
    println("In Player Default Constructor");
  }
  
  Player(char move, char left, char right, float startx, float starty, color c)
  {
    super(startx, starty, 50);
    this.move = move;
    this.left = left;
    this.right = right;
    this.c = c;    
  }
  
  void position()
  {
    
  }
  
  void thing()
  {
  }
}