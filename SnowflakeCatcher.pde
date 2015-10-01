Snowflake [] flakes;

void setup()
{
  size(800,800);
  background(0,0,0);
  flakes = new Snowflake[500];
  for(int i=0 ; i<flakes.length; i++){
    flakes[i] = new Snowflake();
  }
}
void draw()
{
  
  for(int i=0 ; i<flakes.length; i++){
    flakes[i].erase();
    flakes[i].lookDown();
    flakes[i].move();
    flakes[i].wrap();
    flakes[i].show();
  }
  //click on green to get the snow moving again!
  if( mousePressed)
   {
   fill(0,0,0);
    ellipse(mouseX, mouseY, 7,7);
  } 
}
void mouseDragged()
{
  stroke(0,51,0);
  strokeWeight(5);
  line(pmouseX,pmouseY,mouseX,mouseY);
  strokeWeight(1);
  stroke(0);


  

}
class Snowflake
{
  int x,y,c;
  boolean isMoving;

  Snowflake(){
    x= (int)(Math.random()*800);
    y = (int)(Math.random()*800);
    isMoving = true;
    c= (int)(Math.random()*255)+30;
  }

  void show()
  {
    fill(c,c,c);
    ellipse(x, y, 5,5);
  }
  void lookDown()
  {
    if(y>0 && y<800 && (get(x,y+4)!= color (0,0,0)))
      isMoving = false;
    else  
      isMoving= true;  
  }
  void erase()
  {
    fill(0,0,0);
    ellipse(x, y, 7,7);
  }
  void move()
  {
    if(isMoving==true)
      y=y+1;
  }
  void wrap()
  {
    if(y>780){
      y=0;
      x=(int)(Math.random()*800);
    }
  }
}



