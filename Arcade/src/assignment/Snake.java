package assignment;

//Importing various libraries
import processing.core.*;

//Snake class for snake game which extends the abstract class
public class Snake extends Obj
{
	//Fields
	PApplet papplet;
	char up;
	char left;
	char right;
	char down;
	char newg;
	
	//Constructor to declare the movement of the shooter using keys and reseting 
	public Snake(PApplet papplet, float startx, float starty, char up, char left, char right, char down, char newg) 
	{
		super(papplet, startx, starty);
		this.papplet = papplet;
	    this.up = up;
	    this.left = left;
	    this.right = right;
	    this.down = down;
	    this.newg = newg;
	    points = 0;
	}

	@Override
	//Method to set position and movement of the object
	void position() 
	{
		//What happens when key is pressed
	    if(Menu.keys[up])
	    {
	      if(snakey[1] != snakey[0] - 10)
	      {
	        fory = -10;
	        forx = 0;
	      }
	    }
	    
	    //What happens when key is pressed
	    if(Menu.keys[down])
	    {
	      if(snakey[1] != snakey[0] + 10)
	      {
	        fory = 10;
	        forx = 0;
	      }
	    }
	    
	    //What happens when key is pressed
	    if(Menu.keys[left])
	    {
	      if(snakex[1] != snakex[0] - 10)
	      {
	        fory = 0;
	        forx = -10;
	      }
	    }
	    
	    //What happens when key is pressed
	    if(Menu.keys[right])
	    {
	      if(snakex[1] != snakex[0] + 10)
	      {
	        fory = 0;
	        forx = 10;
	      }
	    }
	    
	    //What happens when key is pressed
	    if(Menu.keys[newg])
	    {
	      newgame();
	    }
	    
	    snx += speedx;
	    sny += speedy;
	    
	    snakex[0] = (int)snx;
	    snakey[0] = (int)sny;
	    
	    //Error Check
	    if(snx > papplet.width - 5 || snx < 5 || sny > papplet.height - 5 || sny < 5)
	    {
	        restart();
	    }
	    
	    //Error Check
	    for(int i = 1; i < snakel; i++)
	    {
	      if(snx == snakex[i] && sny == snakey[i])
	      {
	        restart();
	      }
	    }
		
	}

	@Override
	//Abstract method to draw the object itself
	void thing() 
	{
		//Draw snake
	    papplet.fill(58, 209, 36);
	    for(int i = 0; i < snakel; i++)
	    {
	      int x = snakex[i];
	      int y = snakey[i];
	      papplet.rect(x - 5, y - 5, w, w);
	    }
	    
	    for(int j = snakel; j > 0; j--)
	    {
	      snakex[j] = snakex[j - 1];
	      snakey[j] = snakey[j - 1];
	    } 
	    
	    //Display text 
	    papplet.fill(58, 209, 36);
	    papplet.textSize(20);
	    papplet.text("Score: " + points, 500, 20);
		
	}

	@Override
	//Abstract method to reset the variables
	void newgame() 
	{
		papplet.background(0);
	    points = 0;
	    snakel = 1;
	    correct = true;
	}
	
	//Method to display a restart screen
	void restart()
	{
	  papplet.textAlign(Menu.CENTER, Menu.CENTER);
	  papplet.textSize(50);
	  papplet.fill(58, 209, 36);
	  papplet.text("You Lose", 500, 290);
	  papplet.text("Press R to Reset", 500, 350);
	  papplet.text("Score" + points, 500, 410);
	}

}