package Assignment;

import processing.core.PApplet;

public class Pitch extends Object
{
	//Fields for pitch
	int pitchx, pitchy;
	float rad;

	public Pitch(PApplet papplet) 
	{
		super(papplet);
		this.pitchx = papplet.width / 2;
		this.pitchy = papplet.height;
		this.rad = 100;
	}

	@Override
	void position()
	{
		papplet.stroke(0);
		papplet.fill(0);;
		papplet.rect(0,  0,  papplet.width, 10);
		papplet.rect(0,  690,  papplet.width,  10);		
	}

	@Override
	void thing() 
	{
	    papplet.stroke(255);
	    papplet.fill(35, 227, 23);
	    papplet.ellipse(pitchx, pitchy / 2, rad, rad);
	    papplet.stroke(255);
	    papplet.line(pitchx, 0, pitchx, pitchy);
	    papplet.line(pitchx, 350, pitchx, 400);		
	}
	
	void newgame()
	{
		
	}

}
