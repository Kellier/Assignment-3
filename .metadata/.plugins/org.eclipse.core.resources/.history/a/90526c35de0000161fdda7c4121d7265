package assignment;

import processing.core.*;
import java.util.Random;

public class Food extends Obj
{
	PApplet papplet;
	char newg;

	public Food(PApplet papplet, char newg) 
	{
		this.papplet = papplet;
		this.newg = newg;
	}

	@Override
	void position() 
	{
	    if(Menu.keys[newg])
	    {
	      newgame();
	    }
	}

	@Override
	void thing() 
	{
	    papplet.fill(250, 30, 10);
	    
		Random r = new Random();
		int i1 = r.nextInt(papplet.width/10 - 1) + 1;
		int i2 = r.nextInt(papplet.height/10 - 1) + 1;
	    
	    while(correct)
	    {
	      int x = i1;
	      int y = i2;
	      
	      foodx = (int)(5 + x * 10);
	      foody = (int)(5 + y * 10);
	      
	      for(int i = 0; i < snakel; i++)
	      {
	        if(x == snakex[i] && y == snakey[i])
	        {
	          correct = true;
	          i = snakel;
	        }
	        else
	        {
	          correct = false;
	        }
	      }
	    }
	    papplet.rect(foodx - 5, foody - 5, w, h);
		
	}

	@Override
	void newgame() 
	{
	    foodx = -1;
	    foody = -1;
	    snakel = 1;
	    correct = true;	
	}

}
