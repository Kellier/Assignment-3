//Class for Star which inherits the abstract class Object
class Star extends Obj
{
  //Fields for Star
  float points;
  float rotSpeed;
  float radius;
  float rot;
  
  //Constructor with starting point and color return types and the amount fo points on each star
  Star(float x, float y, float radius,int points)
  {
    super(x, y, radius * 2);
    this.radius = radius;
    this.points = points;
    rot = 0.0f;
    rotSpeed = 0.01f;
  }
  
  //Abstract method to set position of the stars and their rotations
  void position()
  {
    //Set rotation speed
    rot += rotSpeed;
    if(rot > TWO_PI)
    {
      rot = 0;
    }
  }
  
  //Abstract method to draw the stars using matrices and PVectors for the positions
  void thing()
  {
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(rot);
    float thetaInc = TWO_PI / (points * 2);
    float lastX;
    float lastY;
    lastX = 0;
    lastY = -radius; 
    stroke(random(100, 255), random(100, 255), random(100, 255));
    for (int i = 1 ; i <= (points * 2) ; i ++)
    {
      float theta = i * thetaInc;
      float x, y;
      float r;
      if (i % 2 == 1)
      {
        r = radius * 0.5f;
      }
      else
      {
        r = radius;
      }
      
      x = sin(theta) * r;
      y = -cos(theta) * r;
      line(lastX, lastY, x, y);
      lastX = x;
      lastY = y;      
    }
    
    popMatrix();
  }
  
  void newgame()
  {
  }
  
}