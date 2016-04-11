class Food extends Object implements Increase
{
  
  Food()
  {
    //Constructor chaining. Call a constructor in the super class
    super(width * 0.5f, height * 0.5f, 50);
    println("In Food Default Constructor");
  }
  
  Food(float startx, float starty)
  {
    super(startx, starty, 50);
    health = 5;
  }
  
  void position()
  {
    if(health <= 0)
    {
      objects.remove(this);
      for(int i = 0; i < objects.size(); i++)
      {
        Object go = objects.get(i);
        if(go instanceof Player)
        {
          go.score += 5;
        }
      }
    }
  }
  
  void thing()
  {
    pushMatrix();
    translate(pos.x, pos.y);
    stroke(250, 30, 10);
    fill(250, 30, 10);
    rect(foodx, foody, w, h);
    popMatrix();
  }
  
  void applyTo(Player ply)
  {
    ply.w += 5;
  }

}