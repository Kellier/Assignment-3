package assignment;

import java.util.Random;

import processing.core.*;

public class Ball extends Obj 
{
	PApplet papplet;
	float br = 10;
	char reset;
	char newg;
	

	public Ball(PApplet papplet, float startx, float starty, char reset, char newg)
	{
		super(papplet, startx, starty);
		this.papplet = papplet;
		this.reset = reset;
		this.newg = newg;
	}

	@Override
	void position() 
	{
	    //If statement which indicates what happens when the ball hits off the paddle for Player
	    if((pos.x >= recta - br) && (pos.x <= (recta - br) + w) && (pos.y >= papplet.mouseY ))
	    {
	      speedx = -speedx;
	    }
	    
	    //If statement so ball bounces off the walls
	    if(pos.y > papplet.height - 20)
	    {
	      speedy = -speedy;
	    }
	    
	    //If statement so ball bounces off the walls
	    if(pos.y < 20)
	    {
	      speedy = -speedy;
	    }
	    
	    //If statement that decrements the Player 2 lives and resets the ball position
	    if(pos.x > papplet.width)
	    {
	      p_lives --;
	      reset();
	    }
	    
	    //If statement that decrements the Player 1 lives and resets the ball position
	    if(pos.x < br)
	    {
	      speedx = -speedx;
	    }
	    
	    
	    //If pressed the game will reset the ball position
	    if(Menu.keys[reset])
	    {
	      reset();
	    }
	    
	    //If pressed the game will start a new one
	    if(Menu.keys[newg])
	    {
	      newgame();
	    }
	    
	    //Increments the speed of the ball
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
	    
	    papplet.fill(7, 29, 103);
	    papplet.textSize(30);
	    papplet.text("Player:  " + p_lives, 600, 40);
		
	}
	
	Random r = new Random();
	int i1 = r.nextInt(900 - 100) + 100;
	int i2 = r.nextInt(papplet.height - 0) + 0;

	@Override
	void newgame() 
	{	
	    speedx = 8;
	    speedy = 8;
	    p_lives = 5;
	    pos.x = i1;
	    pos.y = i2;
	    br = 10;	
	}
	
	void reset()
	{
	  pos.x = i1;
	  pos.y = i2;
	  br = 10;
	}

}
