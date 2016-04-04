package assignment;


import java.util.Random;

import processing.core.*;

public abstract class Obj 
{
	PApplet papplet;
	PVector pos;
	PVector move;
	float speed = 5.0f;
	float wallx, wally;
	float foodx, foody;
	float enemyx, enemyy;
	float speedx, speedy;
	float w, h;
    float W;
    float halfw;
    int time = 12;
    int score;
    int health;
	
	Random r = new Random();
	int i1 = r.nextInt(330 - 0) + 0;
	int i2 = r.nextInt(700 - 200) + 200;
	
	public Obj()
	{
		
	}
	

	public Obj(PApplet papplet, float x, float y) 
	{
		this.papplet = papplet;
		pos = new PVector(x, y);
		move = new PVector(0, -1);
	    this.w = 10;
	    this.h = 100;
	    this.W = W;
	    this.halfw = W * 0.5f;
	    this.speedx = 8;
	    this.speedy = 8;
	    this.wallx = 350;
	    this.wally = 450;
	    this.foodx = i1;
	    this.foody = i2;
	    this.enemyx = 0;
	    this.enemyy = 0; 
	}

	abstract void position();
	abstract void thing();
	abstract void newgame();

	public static void main(String[] args) 
	{
		String[] a = {"MAIN"};
		PApplet.runSketch(a, new Menu());

	}
}