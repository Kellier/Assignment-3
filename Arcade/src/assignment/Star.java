package assignment;

//Importing various libraries
import processing.core.*;

//Star class for pong game which extends the abstract class
public class Star extends Obj
{
	//Fields
	PApplet papplet;
	float points;
	float radius;
	float rotSpeed;
	float rot;
	float theta = 0.0f;
	
	//Constructor to declare the starting point of star, their radius and their points
	public Star(PApplet papplet, float startx, float starty, float radius, int points) 
	{
		super(papplet, startx, starty);
		this.papplet = papplet;
		this.radius = radius * 2;
		this.points = points;
		rot = 0.0f;
		rotSpeed = 0.01f;
	}

	@Override
	//Method to set position and movement of the object
	void position() 
	{
	    //Set rotation speed
	    rot += rotSpeed;
	    if(rot > PConstants.TWO_PI)
	    {
	      rot = 0;
	    }
		
	}

	@Override
	//Abstract method to draw the object itself
	void thing() 
	{
		//Draw stars
	    papplet.pushMatrix();
	    papplet.translate(pos.x, pos.y);
	    papplet.rotate(rot);
	    float thetaInc = PConstants.TWO_PI / (points * 2);
	    float lastX;
	    float lastY;
	    lastX = 0;
	    lastY = -radius; 
	    papplet.stroke(255);
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
	      
	      x = PApplet.sin(theta) * r;
	      y = -PApplet.cos(theta) * r;
	      papplet.line(lastX, lastY, x, y);
	      lastX = x;
	      lastY = y;      
	    }
	    papplet.popMatrix();
	}

	@Override
	//Abstract method to reset the variables
	void newgame() 
	{
		
	}

}
