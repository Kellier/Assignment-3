abstract class Object
{
  PVector pos;
  PVector move;
  float w, h;
  float speed = 5.0f;
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
    this.h = 40;
    score = 0;
  }
  
  abstract void position();
  abstract void thing();
}