class Spaceship extends Floater  
{   
   public double getXspeed(){return myXspeed;}
   public double getYspeed(){return myYspeed;}  
  
    public Spaceship(){
    corners = 12;
    myColor = color(100,120,200);
    myCenterX = 400;
    myCenterY= 400;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
    
    //assign values for verticies
    xCorners = new int[corners];
    xCorners[0]=20;
    xCorners[1]=10;
    xCorners[2]=-2;
    xCorners[3]=-4;
    xCorners[4]=-10;
    xCorners[5]=-20;
    xCorners[6]=-16;
    xCorners[7]=-20;
    xCorners[8]=-10;
    xCorners[9]=-4;
    xCorners[10]=-2;
    xCorners[11]=10;
    
    yCorners = new int[corners];
    yCorners[0]=0;
    yCorners[1]=4;
    yCorners[2]=20;
    yCorners[3]=20;
    yCorners[4]=6;
    yCorners[5]=10;
    yCorners[6]=0;
    yCorners[7]=-10;
    yCorners[8]=-6;
    yCorners[9]=-20;
    yCorners[10]=-20;
    yCorners[11]=-4;   
    }
    
   public void controls(){
     if(wIsPressed)
    accelerate(0.2);
  else if (sIsPressed)
    accelerate(-0.2);
  //noSpeedKeysPressed
  //else if(!wIsPressed && !aIsPressed){
  //  if (getXspeed()>0)
  //    accelerate(-0.1);
  //   if (getXspeed()<0)
  //    accelerate(0.1);
  //  }
  //rotation
  else if(aIsPressed)
    turn(-4);
  else if(dIsPressed)
    turn(4);
   
   }
}
