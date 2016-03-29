abstract class Object
{
  PVector pos;
  PVector move;
  float w, h;
  float halfW, W;
  float foodx, foody;
  float theta = 0.0f;
  float speed;
  color c;
  int score;
  int health;
  
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
    this.foodx = 0;
    this.foody = 0;
    this.W = W;
    this.halfW = W * 0.5f;
    this.speed = 1.0f;
    score = 0;
  }
  
  abstract void position();
  abstract void thing();
}