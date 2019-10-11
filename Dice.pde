void setup()
{
	size(775,850);
	noLoop();
}
void draw()
{
	background(182);
	int total = 0;
	for(int y = 25; y <= 700; y+=75)
	{
		for(int x = 20; x <= 750; x+=75)
		{
			Die bob = new Die(x,y);
			bob.show();
			total += bob.value;
		}
	}
	textSize(24);
	text("The Total is " + total,290,800);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY, value;
	
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;           
		roll();
	}
	void roll()
	{
		value = (int)(Math.random() * 6 + 1);

	}
	void show()
	{
		noStroke();
		fill((int)(Math.random()*255 + 1),(int)(Math.random()*255 + 1),(int)(Math.random()*255 + 1));
		rect(myX,myY,60,60,5);
		fill(0);
		if(value == 1)
		{
			ellipse(myX + 30,myY + 30,10,10);
		}
		if(value == 2)
		{
			ellipse(myX + 15, myY + 15,10,10);
			ellipse(myX + 45, myY + 45,10,10);
		}
		if(value == 3)
		{
			ellipse(myX + 15, myY + 15,10,10);
			ellipse(myX + 30, myY + 30,10,10);
			ellipse(myX + 45, myY + 45,10,10);
		}
		if(value == 4)
		{
			ellipse(myX + 15, myY + 15,10,10);
			ellipse(myX + 45, myY + 45,10,10);
			ellipse(myX + 45, myY + 15,10,10);
			ellipse(myX + 15, myY + 45,10,10);
		}
		if(value == 5)
		{
			ellipse(myX + 30, myY + 30,10,10);
			ellipse(myX + 15, myY + 15,10,10);
			ellipse(myX + 45, myY + 45,10,10);
			ellipse(myX + 45, myY + 15,10,10);
			ellipse(myX + 15, myY + 45,10,10);
		}
		if(value == 6)
		{
			ellipse(myX + 15, myY + 15,10,10);
			ellipse(myX + 45, myY + 45,10,10);
			ellipse(myX + 45, myY + 15,10,10);
			ellipse(myX + 15, myY + 45,10,10);
			ellipse(myX + 15, myY + 30,10,10);
			ellipse(myX + 45, myY + 30,10,10);
		}
	}
}
