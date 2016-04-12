package assignment;

import java.awt.Button;

import java.util.ArrayList;
import java.util.Random;

import controlP5.*;

import processing.core.PApplet;
import processing.core.PFont;

public class Menu extends PApplet
{	
	ControlP5 cp5;
	Button b;
	
	int buttonValue = 0;
	
	String mode = "Menu";
	int a = 0;
	
	//Various array lists to increment different methods in classes for the draw method
	static ArrayList<Obj> objs = new ArrayList<Obj>();
	static ArrayList<Obj> objes = new ArrayList<Obj>();
	static ArrayList<Obj> obje = new ArrayList<Obj>();
	static ArrayList<Obj> obj = new ArrayList<Obj>();
	
	PFont myFont;
	
	//Increment all keys for control use
	static boolean[] keys = new boolean[512];
		
	 //Method to move the paddles if pressed the paddle will move
	public void keyPressed()
	{
	  keys[keyCode] = true;
	}

	//Method to move the paddles if released the paddle will stop
	public void keyReleased()
	{
	  keys[keyCode] = false;
	}
	
	public void setup()
	{
		Random r = new Random();
		int x1 = r.nextInt(300 - 10) + 10;
		int y1 = r.nextInt(650 - 300) + 300; 
		int a1 = r.nextInt(665 - 365) + 365;
		int b1 = r.nextInt(980 - 686) + 686;
		int c1 = r.nextInt(600 - 300) + 300;
		int d1 = r.nextInt(900 - 100) + 100;
		int e1 = r.nextInt(height - 0) + 0;

		
		//Create the buttons for the menu
		smooth();
		frameRate(30);
		cp5 = new ControlP5(this);
		
		//Name the buttons and set for the menu
		cp5.addButton("Menu",0,0,0,80,19);
		cp5.addButton("Instructions",0,200,0,80,19);
		cp5.addButton("Pong",0,400,0,80,19);
		cp5.addButton("Snake",0,600,0,80,19);
		cp5.addButton("Space Invaders",0,800,0,80,19);
		
		Snake sna = new Snake(this, 'W', 'A', 'D', 'S', 'N');
		obj.add(sna);
		
		Food fd = new Food(this, 'N');
		obj.add(fd);
		
		H_Snake snake = new H_Snake(this, x1, y1);
		objs.add(snake);
		
		H_Pong pong = new H_Pong(this,a1 ,y1 );
		objs.add(pong);
		
		H_Space space = new H_Space(this, b1, c1);
		objs.add(space);
		
		Shooter ply = new Shooter(this, 500, 650, 'A', 'D', ' ', 'N');
		objes.add(ply);
		
		Player pl = new Player(this,970, 290);
		obje.add(pl);
		
		Ball ball = new Ball(this, d1, e1, 'R', 'N' );
		obje.add(ball);
		
		for(int j = 0; j < 40; j++)
		{
			int e2 = r.nextInt(height - 0) + 0;
			int f1 = r.nextInt(width - 0) + 0;
			int g1 = r.nextInt(50 - 10) + 10;
			int h1 = r.nextInt(10 - 5) + 5;
			Star star = new Star(this, f1, e2, g1, (int)h1);
			obje.add(star);
		}
		
		for(int i = 0; i < width; i += 1000)
		{
			for(int j = 50; j < 600; j += 50)
			{
				int x2 = r.nextInt(width - i) + i;
				Enemy en = new Enemy(this,x2 ,j);
				objes.add(en);
			}
		}
	}
	
	public void settings()
	{
		size(1000, 700);	
	}
	
	public void draw()
	{
		if(mode == "Menu")
		{
			background(0);
			
		    myFont = loadFont("Arcade1.vlw");
		    
		    stroke(255);
		    fill(255);
		    textFont(myFont);
		    textAlign(CENTER, CENTER);
		    textSize(90);
		    text("Arcade", 500, 90);
		    
		    stroke(255, 0, 0);
		    fill(255, 0, 0);
		    textFont(myFont);
		    textAlign(CENTER, CENTER);
		    textSize(90);
		    text("Snake", 167, 240);
		    
		    stroke(245, 250, 20);
		    fill(245, 250, 20);
		    textFont(myFont);
		    textAlign(CENTER, CENTER);
		    textSize(90);
		    text("Pong", 500, 240);
		    
		    stroke(40, 232, 23);
		    fill(40, 232, 23);
		    textFont(myFont);
		    textAlign(CENTER, CENTER);
		    textSize(45);
		    text("Space", 833, 220);
		    
		    stroke(40, 232, 23);
		    fill(40, 232, 23);
		    textFont(myFont);
		    textAlign(CENTER, CENTER);
		    textSize(45);
		    text("Invaders", 833, 270);
		    
		    stroke(255);
		    line(0, 200, 1000, 200);
		    line(333, 200, 333, 700);
		    line(666, 200, 666, 700);
		    line(0, 295, 1000, 295);
		    
		    for(int i = objs.size() - 1; i >= 0; i--)
		    {
		      Obj go = objs.get(i);
		      go.position();
		      go.thing();
		    }
		    
		}
		
		if(mode == "Instructions")
		{
			background(0);
			stroke(255);
		    line(0, 0, 1000, 0);
		    line(0, 95, 1000, 95);
		    line(333, 0, 333, 700);
		    line(666, 0, 666, 700);
			  
		    stroke(255, 0, 0);
		    fill(255, 0, 0);
		    textFont(myFont);
		    textAlign(CENTER, CENTER);
		    textSize(90);
		    text("Snake", 167, 40);
		    textSize(45);
		    text("Instructions:", 167, 135);
		    textSize(30);
		    text("W : Up", 167, 195);
		    text("S : Down", 167, 255);
		    text("A : Left", 167, 315);
		    text("D : Right", 167, 375);
		    text("R : Restart", 167, 435);
		    text("N : New Game", 167, 495);
		    text("Aim:", 167, 545);
		    textSize(20);
		    text("Grow your Snake and", 167, 575);
		    text("last as long as", 167, 605);
		    text("you can!", 167, 635);
		    
			  
		    stroke(245, 250, 20);
		    fill(245, 250, 20);
		    textFont(myFont);
		    textAlign(CENTER, CENTER);
		    textSize(90);
		    text("Pong", 500, 40);
		    textSize(45);
		    text("Instructions:", 500, 135);
			textSize(30);
			text("Mouse : Move", 500, 195);
			text("R : Restart", 500, 255);
			text("N : New Game", 500, 315);
			text("Aim:", 500, 365);
			textSize(20);
			text("Stop the ball from", 500, 395);
			text("scoring a goal", 500, 425);
			text("using your paddle!", 500, 455);
		  
			stroke(40, 232, 23);
			fill(40, 232, 23);
			textFont(myFont);
			textAlign(CENTER, CENTER);
			textSize(45);
			text("Space", 833, 20);
			
			stroke(40, 232, 23);
			fill(40, 232, 23);
			textFont(myFont);
			textAlign(CENTER, CENTER);
			textSize(45);
			text("Invaders", 833, 70);
			textSize(45);
			text("Instructions:",  833, 135);
			textSize(30);
			text("A : Left", 833, 195);
			text("D : Right", 833, 255);
			text("Space : Shoot", 833, 315);
			text("R : Restart", 833, 375);
			text("N : New Game", 833, 435);
			text("Aim:", 833, 485);
			textSize(20);
			text("Avoid the enemy bullets", 833, 515);
			text("and last as long as", 833, 545);
			text("you can by shooting", 833, 575);
			text("the enemy ships", 833, 605);
		}
		
		if(mode == "Pong")
		{
			background(0);
			
			myFont = loadFont("Arcade1.vlw");
		    
			for(int i = obje.size() - 1; i >= 0; i--)
			{
				Obj go = obje.get(i);
				go.position();
				go.thing();
				go.newgame();
			}
			
			GameLives();
		}
		
		if(mode == "Snake")
		{
			background(0);
			
			frameRate(10);
			
			for(int i = obj.size() - 1; i >= 0; i--)
			{
			  Obj go = obj.get(i);
			  go.position();
			  go.thing();
			}
		}
		
		if(mode == "Space Invaders")
		{
			background(0);
			
			myFont = loadFont("Arcade1.vlw");
				    
			for(int i = objes.size() - 1; i >= 0; i--)
			{
				Obj go = objes.get(i);
				go.position();
				go.thing();
				go.newgame();
			}
				  
			bulletCollision1();
			bulletCollision2();
			Screen();
		}
	}
	
	void bulletCollision1()
	{
	  for(int i = objes.size()- 1; i >= 0; i--)
	  {
	    Obj go = objes.get(i);
	    if(go instanceof Shooter)
	    {
	      for(int j = objes.size() - 1; j >= 0; j--)
	      {
	        Obj other = objes.get(j);
	        if(other instanceof Enemy_Bullet)
	        {
	          if(go.pos.dist(other.pos) < go.halfw/2 + other.enemyy/2 + other.enemyx/2)
	          {
	            ((Hit) other).applyTo((Shooter)go);
	            objes.remove(other);
	          }
	        }
	      }
	    }
	  }   
	}

	void bulletCollision2()
	{
	  for(int i = objes.size() - 1; i >= 0; i --)
	  {
	    Obj go = objes.get(i);
	    if(go instanceof Enemy)
	    {
	      for(int j = objes.size() - 1; j >= 0; j --)
	      {
	        Obj other = objes.get(j);
	        if(other instanceof Bullet)
	        {
	          if(go.pos.dist(other.pos) < go.enemyx + go.enemyy + other.halfw)
	          {
	            ((EnemyHit) other).applyTo((Enemy)go);
	            objes.remove(other);
	          }
	        }
	      }
	    }
	  }
	}

	void Screen()
	{
	  for(int i = objes.size() - 1; i >= 0; i --)
	  {
	    Obj go = objes.get(i);
	    if(go instanceof Shooter)
	    {
	      if(go.health == 0)
	      {
	        background(0);
	        textAlign(CENTER, CENTER);
	        textSize(50);
	        fill(40, 232, 23);
	        text("You Lose!!", width / 2, height / 2);
	        text("Press N for New Game", width / 2, 410);
	      }
	      else if(go.score == 110)
	      {
	        background(0);
	        textAlign(CENTER, CENTER);
	        textSize(50);
	        fill(40, 232, 23);
	        text("You Win!!", width / 2, height / 2);
	        text("Press N for New Game", width / 2, 410);
	      }
	    }
	  }
	}
	
	//Game lives method uses polymorphism to indicate what happens when either player loses all their lives
	void GameLives()
	{
	  //Load all data from objects array list
	  for(int i = obje.size() - 1; i >= 0; i--)
	  {
	    //Name the global variable
	    Obj go = obje.get(i);
	    if(go instanceof Ball)
	    {  
	      //If statement to indicate what happens when player 1 loses all their lives
	      if(go.lives == 0)
	      {
	        background(0);
	        textAlign(CENTER, CENTER);
	        textSize(50);
	        fill(227, 11, 11);
	        text("Computer Wins, You Lose Chap!!", width / 2, height / 2);
	        text("Press N to restart", width / 2, 400);
	      }
	    }    
	  }
	}


	public static void main(String[] args)
	{
		String[] a = {"MAIN"};
		PApplet.runSketch(a, new Menu());
	}
	
	
	//Method to make sure control P5 works
	public void controlEvent(ControlEvent theEvent)
	{
	  mode = (theEvent.getController().getName());
	}
	
}
