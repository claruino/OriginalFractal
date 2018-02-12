int x;

public void setup()
{
  size(800, 800);
  background(255);
}
public void draw()
{
  background(255);
  fill(mouseX, mouseY, mouseX);
  myFractal(mouseX, mouseY, 200);
}
public void keyPressed()
{
  if(key == 'p')
    x++;
}
public void myFractal(int x, int y, int size)
{
  rect(x, y, size, size);
  if(size > 10)
  {
    myFractal(x-size*2, y-size*2 , size/2);
    myFractal(x+size*2, y+size*2, size/2);
  }
}
