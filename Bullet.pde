class Bullet extends Floater{
private color buddy;
private int myIndex=0;
//private ArrayList<Integer> = new ArrayList<Integer>();
 public void move (){
    //change the x and y coordinates by myXspeed and myYspeed       
  myCenterX += myXspeed;
  myCenterY += myYspeed;
    
  for(int i = 0 ; i< swarm.size(); i++){
    if(abs((float)(swarm.get(i).myCenterX-myCenterX))<20 && abs((float)(swarm.get(i).myCenterY-myCenterY))<20){
      swarm.get(i).hurt(2);
      buddy = swarm.get(i).myColor;
      if(swarm.get(i).hp<=0){
          for (int j = 0; i<80; i++) rocketSmoke.add( new Dust( (float) myCenterX, (float) myCenterY, (float) myPointDirection , 1 , buddy));
      }
      bfires.remove(myIndex);
    }
  }
 }
  
  
  
public Bullet(Spaceship ship){
  myCenterX = ship.myCenterX;
  myCenterY = ship.myCenterY;
  myPointDirection = ship.myPointDirection;
  myXspeed = 10 * cos((float)((2*PI/360) *myPointDirection)) + ship.myXspeed;
  myYspeed = 10 * sin((float)((2*PI/360) *myPointDirection)) + ship.myYspeed;
  myColor = color(255,206,108);
  myStroke = color(255,206,108);

  corners = 8;
  xCorners = new float[corners];
  xCorners[0]=6;
  xCorners[1]=5;
  xCorners[2]=4;
  xCorners[3]=-4;
  xCorners[4]=-4;
  xCorners[5]=-4;
  xCorners[6]=5;
  xCorners[7]=6;
    
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
}
