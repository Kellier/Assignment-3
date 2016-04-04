package assignment;

import processing.core.*;

public class H_Snake extends Obj 
{
	PApplet papplet;

	public H_Snake(PApplet papplet, float startx, float starty)
	{
		super(papplet, startx, starty);
		this.papplet = papplet;
	}

	@Override
	void position() 
	{
		
	}

	@Override
	void thing() 
	{
	    papplet.pushMatrix();
	    papplet.translate(pos.x, pos.y);
	    papplet.stroke(58, 209, 36);
	    papplet.fill(58, 209, 36);
	    papplet.rect(0, 0, w, h);
	    papplet.popMatrix();
	    
	    papplet.stroke(250, 30, 10);
	    papplet.fill(250, 30, 10);
	    papplet.rect(foodx, foody, w, w);
	}
	
	void newgame()
	{
		
	}

}