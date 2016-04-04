package assignment;

import processing.core.*;

public class Player extends Obj 
{
	PApplet papplet;

	public Player(PApplet papplet, float startx, float starty) 
	{
		super(papplet, startx, starty);
		this.papplet = papplet;
	}

	@Override
	void position() 
	{
	    if(papplet.mouseY < 0)
	    {
	      papplet.mouseY = 0;
	    }
	  
	    if(papplet.mouseY > papplet.height)
	    {
	      papplet.mouseY = papplet.height;
	    } 
		
	}

	@Override
	void thing() 
	{
	    papplet.stroke(7, 29, 103);
	    papplet.fill(7, 29, 103);
	    papplet.rect(recta, papplet.mouseY, w, h);
	}

	@Override
	void newgame() 
	{
		
	}

}
