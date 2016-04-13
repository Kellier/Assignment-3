package assignment;

import java.util.Random;

//Importing various libraries
import processing.core.*;

//H_Snake class for the homescreen which extends the abstract class
public class H_Snake extends Obj 
{
	//Fields
	PApplet papplet;
	
	//Randomly generated numbers for various methods
	Random r = new Random();
	int i1 = r.nextInt(330 - 0) + 0;
	int i2 = r.nextInt(700 - 200) + 200;

	//Constructor
	public H_Snake(PApplet papplet)
	{
		this.papplet = papplet;
	}

	@Override
	//Method to set position and movement of the object
	void position() 
	{
		
	}

	@Override
	//Abstract method to draw the object itself
	void thing() 
	{
		//Draw the snake
	    papplet.fill(58, 209, 36);
	    papplet.stroke(0);
	    papplet.rect(165, 420, 10, 10);
	    papplet.rect(165, 431, 10, 10);
	    papplet.rect(165, 442, 10, 10);
	    papplet.rect(165, 453, 10, 10);
	    papplet.rect(165, 464, 10, 10);
	    papplet.rect(165, 475, 10, 10);
	    
	    //Draw the food
	    papplet.stroke(250, 30, 10);
	    papplet.fill(250, 30, 10);
	    papplet.rect(i1, i2, 10, 10);
	}
	
	//Abstract method to reset the variables
	void newgame()
	{
		
	}

}
