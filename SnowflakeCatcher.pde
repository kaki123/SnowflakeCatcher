Snowflake [] flakes;
void setup()
{
  size(300,300);
  flakes = new Snowflake[50];
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
}
void mouseDragged()
{
  //your code here
}

class Snowflake
{
  int x,y;
  boolean isMoving;
  Snowflake()
  {
    x= (int)(Math.random()*300);
    y= (int)(Math.random()*300);
    isMoving=true;
  }
  void show()
  {
    fill(255,255,255);
    ellipse(x, y, 5,5);
  }
  void lookDown()
  {
    if(x>0 && x<300 || (get(x,y)!= color (0,0,0)))
      isMoving = true;
    else  
      isMoving= false;
      
    
  }
  void erase()
  {
    fill(0);
    ellipse(x, y, 7,7);
  }
  void move()
  {
    if(isMoving==true)
      y=y+1;
  }
  void wrap()
  {
    if(y>300){
      y=0;
      x=(int)(Math.random()*300);
    }
  }
}



