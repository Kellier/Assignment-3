package assignment;

import processing.core.*;

public class H_Space extends Obj 
{
	float a = 833;
	float b = 650;
	PApplet papplet;

	public H_Space(PApplet papplet, float startx, float starty) 
	{
		super(papplet, startx, starty);
		this.papplet = papplet;
	}

	@Override
	void position() 
	{
	    if(pos.x > 980)
	    {
	      speedx = -speedx;
	    }
	    
	    if(pos.x < 686)
	    {
	      speedx = - speedx;
	    }
	    
	    pos.x = pos.x + speedx;
		
	}

	@Override
	void thing() 
	{
	    papplet.pushMatrix();
	    papplet.translate(pos.x, pos.y);
	    papplet.stroke(245, 250, 20);
	    papplet.line(enemyx, enemyy, enemyx - 15, enemyy - 15);
	    papplet.line(enemyx - 15, enemyy - 15, enemyx - 15, enemyy + 30);
	    papplet.line(enemyx - 15, enemyy + 30, enemyx, enemyy);
	    papplet.line(enemyx, enemyy, enemyx + 15, enemyy - 15);
	    papplet.line(enemyx + 15, enemyy - 15, enemyx + 15, enemyy + 30);
	    papplet.line(enemyx + 15, enemyy + 30, enemyx, enemyy); 
	    papplet.popMatrix();
	    
	    papplet.stroke(40, 232, 23);
	    papplet.line(a, b, a - 20, b + 30);
	    papplet.line(a - 20, b + 30, a, b + 15);
	    papplet.line(a, b + 15, a + 20, b + 30);
	    papplet.line(a + 20, b + 30, a, b);
		
	}

}
