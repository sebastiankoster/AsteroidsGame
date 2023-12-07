class Rocket extends Floater{
public int counterinit;
private int myIndex=0;
//private ArrayList<Integer> = new ArrayList<Integer>();
 public void move (){      
    //change the x and y coordinates by myXspeed and myYspeed       
  myCenterX += myXspeed;    
  myCenterY += myYspeed;  
  accelerate(2);
  myColor = color(206,202,250);
  myStroke = myColor;

  for(int i = 0 ; i< swarm.size(); i++){
    if(abs((float)(swarm.get(i).myCenterX-myCenterX)) < 20 && abs((float)(swarm.get(i).myCenterY-myCenterY))<20){
      for(int j = 0 ; i< swarm.size(); i++){
        swarm.get(i).hurt( (int) (1000 / sqrt( (float) ( (swarm.get(i).myCenterX-myCenterX) * (swarm.get(i).myCenterX-myCenterX) + (swarm.get(i).myCenterY - myCenterY)*(swarm.get(i).myCenterY - myCenterY)))));;
      }
      for(int j = 0; i<500; i++){
        rocketSmoke.add(new Dust((float)myCenterX,(float)myCenterY,(float)myPointDirection,3,color(240,135,97)));
      }
      rfires.remove(myIndex);
    }
  }
       
  if (myCenterX<0 || myCenterX>width || myCenterY<0 || myCenterY>height){
    rfires.remove(myIndex);
  }
 }
  
  
  
public Rocket(Spaceship ship){
  counterinit = frameCount;
  myCenterX = ship.myCenterX;
  myCenterY = ship.myCenterY;
  myPointDirection = ship.myPointDirection;
  myXspeed = 10 * cos((float)((2*PI/360) *myPointDirection)) + ship.myXspeed;
  myYspeed = 10 * sin((float)((2*PI/360) *myPointDirection)) + ship.myYspeed;
  myColor = color(255,206,108);

  corners = 8;
  xCorners = new float[corners];
  xCorners[0]=24;
  xCorners[1]=20;
  xCorners[2]=16;
  xCorners[3]=-16;
  xCorners[4]=-16;
  xCorners[5]=-16;
  xCorners[6]=20;
  xCorners[7]=24;

    
  yCorners = new float[corners];
  yCorners[0]=0;
  yCorners[1]=1.5;
  yCorners[2]=2;
  yCorners[3]=2;
  yCorners[4]=-2;
  yCorners[5]=-2;
  yCorners[6]=-1.5;
  yCorners[7] = 0;
 }


public void show (){             
  fill(myColor);   
  stroke(myColor);    
    
  translate((float)myCenterX, (float)myCenterY);

  //convert degrees to radians for rotate()     
  float dRadians = (float)(myPointDirection*(Math.PI/180));
    
  //rotate so that the polygon will be drawn in the correct direction
  rotate(dRadians);
    
  //draw the polygon
  beginShape();
  for (int nI = 0; nI < corners; nI++){
    vertex(xCorners[nI], yCorners[nI]);
  }
  endShape(CLOSE);

  rotate(-1*dRadians);
  translate(-1*(float)myCenterX, -1*(float)myCenterY);
    
    
    //draw smoke trail
  for(int i = 0; i<100; i++){
    rocketSmoke.add(new Dust((float)myCenterX,(float)myCenterY,(float)myPointDirection));
  }
    
 }   
}
