package assignment;

import processing.core.*;

public class H_Snake extends Obj 
{
	PApplet papplet;

	public H_Snake()
	{
		
	}

	@Override
	void position() 
	{
		
	}

	@Override
	void thing() 
	{
	    papplet.fill(58, 209, 36);
	    papplet.noStroke();
	    papplet.rect(165, 420, w, w);
	    papplet.rect(165, 431, w, w);
	    papplet.rect(165, 442, w, w);
	    papplet.rect(165, 453, w, w);
	    papplet.rect(165, 464, w, w);
	    papplet.rect(165, 475, w, w);
	    
	    papplet.stroke(250, 30, 10);
	    papplet.fill(250, 30, 10);
	    papplet.rect(foodx, foody, w, w);
	}
	
	void newgame()
	{
		
	}

}
