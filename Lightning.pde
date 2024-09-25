int startX = 250;
int startY = 50;
int endX = 250;
int endY = 50;


void setup()
{
  size(500,500);
  strokeWeight(10);
  background(65,80,99);
}
void draw()
{
  //fading away effect
  stroke(65,80,99);
  fill(65,80,99,15);
  rect(0,0,500,500);
  
  //dark cloud
  fill(50);
  stroke(0);
  ellipse(250,0,250,150);

  //blue lightning
  stroke(32,136,232);
  while(endY < 500){
    startX = endX + (int)(Math.random()*31-15);
    startY = endY + (int)(Math.random()*10);
    line(startX,startY,endX,endY);
    endX = startX;
    endY = startY;
  }
}
void mousePressed()
{
  startX = 250;
  startY = 50;
  endX = 250;
  endY = 50;
}
