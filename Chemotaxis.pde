 Bacteria [] colony;

 //declare bacteria variables here   
 void setup()   
 {     
 	background(0);
 	frameRate(5);
 	size(400,400);  
 	colony = new Bacteria[20];
 	for (int i=0; i<colony.length; i++)
 	{
 		colony[i]= new Bacteria ((int)(Math.random()*400), (int)(Math.random()*400));
 		colony[i].show();
 	}
 }   
 void draw()   
 {    
 	background(0);
 	for (int i=0; i<colony.length; i++)
 	{
 		colony[i].show();
 		colony[i].move();
 	}
 }  
 class Bacteria    
 {     
 	int myX, myY;
 	//lots of java!
 	Bacteria(int x, int y)
 	{
 		myX = x;
 		myY = y;
 	}
 	void show()
 	{
 		fill(76,153,0);
		ellipse(myX, myY, 20, 20);
 	}
 	void move()
 	{
		myX += (int)(Math.random()*40)-20;
		myY += (int)(Math.random()*40)-20;
 	}

 }     