
int rollNumb2;
void setup()
	{
		size(500,500);
	    noLoop();

	}
	void draw()
	{
		for(int x=0;x<550;x= x+50){
		for(int y=50;y<500;y=y+50){
		Die theDie = new Die(x,y);
		fill(0,0,0);
		rect(0,0,500,40);
		fill(255,255,255);
		text("value:",100,20);
		text(rollNumb2,150,20);
		int rollNumb;
		theDie.show();
	 	theDie.roll();}
	 	
	}}
	void mousePressed()
	{	rollNumb2 = 0;
	    redraw();
	}
	class Die //models one single dice cube
	{		int rollNumb;     
			int myX;
	        int myY;
	    Die(int x, int y) //constructor
	    {
	    	rollNumb= (int)(Math.random()*6)+1;
	    	rollNumb2= rollNumb + rollNumb2;
	        myX =x;
	        myY=y;
	    }
	     void roll()
	    {	
	   		 fill(255,255,255);
	   		if(rollNumb==1){
	   			ellipse(myX+4,myY+10,5,5);} 
	   		else if(rollNumb==2){
	   			ellipse(myX+4,myY+10,5,5);
	   			ellipse(myX+20,myY+10,5,5);
	   		}
	   		else if(rollNumb==3){
	   				ellipse(myX+4,myY+10,5,5);
	   				ellipse(myX+20,myY+10,5,5);
	   				ellipse(myX+36,myY+10,5,5);}
	   		else if(rollNumb==4){
	   				ellipse(myX+4,myY+10,5,5);
	   				ellipse(myX+20,myY+10,5,5);
	   				ellipse(myX+20,myY+30,5,5);
	   				ellipse(myX+4,myY+30,5,5);}
	   		else if(rollNumb==5){
	   				ellipse(myX+4,myY+10,5,5);
	   				ellipse(myX+20,myY+10,5,5);
	   				ellipse(myX+20,myY+30,5,5);
	   				ellipse(myX+4,myY+30,5,5);
	   				ellipse(myX+35,myY+30,5,5);}
	   		else if(rollNumb==6){
	   				ellipse(myX+4,myY+10,5,5);
	   				ellipse(myX+20,myY+10,5,5);
	   				ellipse(myX+20,myY+30,5,5);
	   				ellipse(myX+4,myY+30,5,5);
	   				ellipse(myX+35,myY+30,5,5);
	   				ellipse(myX+35,myY+10,5,5);}}
	    void show()
	    {
	    	noStroke();
	    	fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
	    	rect(myX,myY,40,40);
	    	
	    	

	    }
	}
