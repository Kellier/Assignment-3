abstract class Object
{
  PVector pos;
  PVector move;
  float w, h;
  float foodx, foody;
  float snakex, snakey;
  float theta = 0.0f;
  float speed;
  color c;
  int score;
  
  Object()
  {
    //Constructor chaining
    this(width * 0.5f, height * 0.5f, 50);
  }
  
  Object(float x, float y, float w)
  {
    pos = new PVector(x, y);
    move = new PVector(0, -1);
    this.w = 10;
    this.h = 10;
    this.foodx = random(0, width);
    this.foody = random(0, height);
    this.snakex = 0;
    this.snakey = 0;
    this.speed = 5.0f;
    score = 0;
  }
  
  abstract void position();
  abstract void thing();
}