abstract class Object
{
  PVector pos;
  float speedx, speedy;
  float wallx, wally;
  color c;
  float w, h;
  float foodx, foody;
  
  Object()
  {
    this(width * 0.5f, height * 0.5f, 50);
  }
  
  Object(float x, float y, float w)
  {
    pos = new PVector(x, y);
    this.w = 10;
    this.h = 100;
  }
  
}