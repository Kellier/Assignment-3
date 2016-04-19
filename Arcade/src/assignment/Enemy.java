package assignment;

//Importing various libraries
import processing.core.*;

//Enemy class for space invaders game which extends the abstract class
public class Enemy extends Obj
{
	//Fields
	PApplet papplet;
	float speedx = 7.0f;
	
	//Constructor to declare the starting point of the enemy
	public Enemy(PApplet papplet, float startx, float starty) 
	{
		super(papplet, startx, starty);
		this.papplet = papplet;
		//Set the health
		health = 5;
	}

	@Override
	//Method to set position and movement of the object
	void position()
	{
	    move.mult(speed);
	    
	    //Fire bullets 
	    if(time > 30)
	    {
	      //Call the enemy_bullet class inside the enemy class
	      Enemy_Bullet bullet = new Enemy_Bullet();
	      bullet.pos.x = pos.x;
	      bullet.pos.y = pos.y;
	      Menu.objes.add(bullet);
	      time = 0;
	    }

	    //Error Check
	    if(pos.x > papplet.width)
	    {
	      speedx = -speedx;
	    }
	    
	    //Error Check
	    if(pos.x < 0)
	    {
	      speedx = - speedx;
	    }
	    
	    //Statement to declare what happens if the enemy ships are destroyed
	    if(health <= 0)
	    {
	    	Menu.objes.remove(this);
	    	for(int i = 0; i < Menu.objes.size(); i++)
	    	{
	    		Obj go = Menu.objes.get(i);
	    		if(go instanceof Shooter)
	    		{
	    			//Increase shooter's score by 10
	    			go.score += 10;
	    		}
	    	}
	    }
	    
	    pos.x = pos.x + speedx;
	    time ++;
		
	}

	@Override
	//Abstract method to draw the object itself
	void thing() 
	{
		//Draw the enemy ship
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
		
	}

	@Override
	//Abstract method to reset the variables
	void newgame() 
	{
		speed = 5.0f;
	}

}
