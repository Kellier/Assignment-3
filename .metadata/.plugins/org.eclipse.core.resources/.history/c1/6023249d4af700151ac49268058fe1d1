package assignment;

import processing.core.*;

public class H_Pong extends Obj
{
	float br = 10.0f;
	PApplet papplet;

	public H_Pong(PApplet papplet, float startx, float starty) 
	{
		super(papplet, startx, starty);
		this.papplet = papplet;
	}

	@Override
	void position() 
	{
	    if((pos.x >= wallx + br) && (pos.x <= (wallx + br) + w) && (pos.y >= papplet.mouseY))
	    {
	      speedx = -speedx;
	    }
	    
	    if(pos.y > 315)
	    {
	      speedy = -speedy;
	    }
	    
	    if(pos.y < 680)
	    {
	      speedy = -speedy;
	    }
	    
	    if(pos.x > 646)
	    {
	      speedx = -speedx;
	    }
	    
	    if(pos.x < 353)
	    {
	      speedx = -speedx;
	    }
	    
	    if(papplet.mouseY < 295)
	    {
	      papplet.mouseY = 295;
	    }
	    
	    if(papplet.mouseY > papplet.height)
	    {
	      papplet.mouseY = papplet.height;
	    }
	    
	    pos.x = pos.x + speedx;
	    pos.y = pos.y + speedy;
		
	}

	@Override
	void thing() 
	{
	    papplet.pushMatrix();
	    papplet.translate(pos.x, pos.y);
	    papplet.stroke(7, 29, 103);
	    papplet.fill(7, 29, 103);
	    papplet.ellipse(0, 0, br * 2, br * 2);
	    papplet.popMatrix();
	    
	    papplet.stroke(245, 250, 20);
	    papplet.fill(245, 250, 20);
	    papplet.rect(wallx, papplet.mouseY, w, h);
		
	}

}
