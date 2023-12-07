class Asteroid extends Floater {
private double rotSpeed;
private int framesLH;
public int hp;
public void hurt(int amount){
hp-=amount;
}

public void checkHP(){
      if(hp<=0){
          for(int j = 0; j<80; j++){
          rocketSmoke.add(new Dust((float)myCenterX,(float)myCenterY,(float)myPointDirection,1,myColor));
            } ;
      }

}
public Asteroid(){
  hp=8;
  rotSpeed = Math.random()*2-1;
  corners = 12;
  myColor = color(163+(int)(Math.random()*40),120+(int)(Math.random()*40),60+(int)(Math.random()*40));
  myCenterX = Math.random()*1881;
  myCenterY= 100;
  myXspeed = (Math.random()*6)-3;
  myYspeed = (Math.random()*6)-3;
  myPointDirection = 0;
    
  //assign values for verticies
  xCorners = new float[corners];
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
  
  yCorners = new float[corners];
  yCorners[0]=0;
  yCorners[1]=14;
  yCorners[2]=20;
  yCorners[3]=20;
  yCorners[4]=16;
  yCorners[5]=10;
  yCorners[6]=0;
  yCorners[7]=-10;
  yCorners[8]=-16;
  yCorners[9]=-20;
  yCorners[10]=-20;
  yCorners[11]=-4;   
 }
    
public void move (){   //move the floater in the current direction of travel      
  //change the x and y coordinates by myXspeed and myYspeed       
  myCenterX += myXspeed;    
  myCenterY += myYspeed;     

  //wrap around screen    
  if(myCenterX >width){     
      myCenterX = 0;    
  }    
  else if (myCenterX<0){     
      myCenterX = width;    
  }    
  if(myCenterY >height){    
    myCenterY = 0;    
  }   
  else if (myCenterY < 0){
    myCenterY = height;    
  }
 }

}
