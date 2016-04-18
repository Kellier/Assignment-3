class Shooter extends Obj
{
  char left;
  char right;
  char shoot;
  char newg;
  
  Shooter()
  {
    // Constructor chaining. Call a constructor in the super class
    super(width * 0.5f, height  * 0.5f, 50);     
    println("In Shooter Default Constructor");
  }
  
  Shooter(char left, char right, char shoot, char newg, float startx, float starty)
  {
    super(startx, starty, 50);
    this.left = left;
    this.right = right;
    this.shoot = shoot;
    this.newg = newg;

    health = 100;
    score = 0;
  }
   
  void position()
  {
    move.mult(speed);
    
    if(keys[left])
    {
      pos.x -= speed;
    }
    
    if(keys[right])
    {
      pos.x += speed;
    }
    
    if(keys[shoot] && time > 12)
    {
        Bullet bullet = new Bullet();
        bullet.pos.x = pos.x;
        bullet.pos.y = pos.y;
        objes.add(bullet);
        time = 0;
    }
    
    if(keys[newg])
    {
      newgame();
    }
    
    if(pos.x > width)
    {
      pos.x = 0;
    }
    
    if(pos.x < 0)
    {
      pos.x = width;
    }
    
    time ++;
    
        
    stroke(40, 232, 23);
    fill(40, 232, 23);
    textSize(20);
    text("Health: " + health, 250, 20);
    text("Score: " + score, 500, 20);
  }
  
  void thing()
  {
    pushMatrix();
    translate(pos.x, pos.y);
    stroke(40, 232, 23);
    line(- halfw, halfw, 0, - halfw);
    line(0, - halfw, halfw, halfw);
    line(halfw, halfw, 0, 0);
    line(- halfw, halfw, 0, 0);
    popMatrix();
  }
  
  void newgame()
  {
    speed = 5.0f;
    pos.x = 500;
    pos.y = 650;
    health = 100;
    score = 0;
  }
}