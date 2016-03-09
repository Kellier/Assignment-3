abstract class Object
{
  PVector pos;
  PVector move;
  float w, h;
  float foodx, foody;
  float theta = 0.0f;
  float speedx, speedy;
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
    this.h = 100;
    this.foodx = random(0, width);
    this.foody = random(0, height);
    this.speedx = 5.0f;
    this.speedy = 5.0f;
    score = 0;
  }
  
  abstract void position();
  abstract void thing();
}