void setup()
{
  size(500,500);
}

float ballX = 200;
float ballY = 100;
float speedX = 10;
float speedY = 0;
int yeah = 0;
int oooh = 0;

void draw()
{
  if(mousePressed){ yeah = 0; oooh = 0;}
  
  float paddle = 1000/ (yeah+10);
  if(ballX <0 || ballX > width) speedX = - speedX;
  if(ballY > height){
    speedY = -speedY;
    float distance = abs(mouseX - ballX);
    if(distance < paddle) yeah += 1;
    else oooh += 1;
  } else speedY += 1;
  
   ballX += speedX;
   ballY += speedY;
  background(123, 21, 234);
  fill(255, 18, 18);
 ellipse(ballX, ballY, 20, 20);
  fill(255, 232, 18);
  rect(mouseX-paddle, height-10, 2*paddle, 10);
  
  fill(0);
  text("yeah: " + yeah, 10, 20);
  text("oooh: " + oooh, 10, 40);
}

