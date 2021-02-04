
public void setup()
{
  size(1000,1000);
 // sierpinski(0,300,300);
 sierpinski(0,1000,1000,5);
}
public void draw()
{
}
public void keyPressed()//optional
{
}
public void sierpinski(int x, int y, int len, int count) 
{
  stroke(0,255,0);
  strokeWeight(2);
  fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  
  if(count == 0){
    triangle(x,y,x + len/2, y - len,x + len,y);
  }
  else{
    sierpinski(x,y,len/2,count-1);
    sierpinski(x + len/4,y - len/2,len/2,count-1);
    sierpinski(x + len/2,y,len/2,count-1);
  }
}
