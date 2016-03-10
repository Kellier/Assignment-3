abstract class Object
{
  PVector pos;
  PVector move;
  float theta = 0.0f;
  float speed = 5.0f;
  color c;
  float w;
  float halfw;
  
  Object()
  {
    // Constructor chaining
    this(width * 0.5f, height  * 0.5f, 50);     
  }
  
  Object(float x, float y, float w)
  {
    pos = new PVector(x, y);
    move = new PVector(0, -1);
    this.w = w;
    this.halfw = w * 0.5f;
    this.theta = 0.0f;
  }
  
  abstract void position();
  abstract void thing();
}