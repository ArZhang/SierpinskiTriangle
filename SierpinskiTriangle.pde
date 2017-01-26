public void setup()
{
	size(400,400);
}
public void draw()
{
	sierpinski(20,200,160);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len==20)
	{
		int r = (int)(Math.random()*256);
		int g = (int)(Math.random()*256);
		int b = (int)(Math.random()*256);
		fill(r,g,b);
		triangle(x,y,x+20,y,x+10,y-20);
	}
	else 
	{

		triangle(x,y,x+len,y,x+len/2,y-len);
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y-len/2,len/2);
	}
}