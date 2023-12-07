class Spaceship extends Floater  {   
  public double getXspeed(){return myXspeed;}
  public double getYspeed(){return myYspeed;}  
  int framesLH = 0;
  public Spaceship(){
  corners = 77;
  myColor = color(100,120,200);
  myStroke = color(250,250,250);
  myCenterX = 400;
  myCenterY= 400;
  myXspeed = 0;
  myYspeed = 0;
  myPointDirection = 0;
    
  //assign values for verticies
  xCorners = new float[]{60, 30, 42, 24, 27, 12,  6, 21, -10, -27, -21, -36, -21, -27, -10,  21,   6, 12,  27,  24,  42, 30, 60, 36, 30, 22, 24, 22, 12, -9, -6, 6, -6, -10, -6, -9, -18, -21, -18, -27, -18, -21, -18,  -9,  -6, -10,  -6,   6,  -6,  -9, 12, 22,  24, 22, 30, 36, -9, -9, -9, -18, -9, -21, -27, -21, -9, -18, -9,  -9, -9, 36, 18, -9, 18, -9, 18, 36, 60};
  yCorners = new float[]{ 0,  6, 15, 15, 24,  9, 21, 27,  28,  36,  21,   0, -21, -36, -28, -27, -21, -9, -24, -15, -15, -6,  0,  0,  6,  8, 15,  8,  9, 15, 18, 21, 18, 28, 18, 15,  12,  21,  12,   0, -12, -21, -12, -15, -18, -28, -18, -21, -18, -15, -9, -8, -15, -8, -6,  0,  9, 15,  9,  12,  9,   0,   0,   0, -9, -12, -9, -15, -9,  0,  0,  0,  9,  0, -9,  0,  0};
  }
    
public void controls(){
  if(wIsPressed)
    accelerate(0.2);
  if (sIsPressed)
    accelerate(-0.2);

  if(aIsPressed)
    turn(-4);
  if(dIsPressed)
    turn(4);
  if(fIsPressed)
    hyperspace();
 }

public void hyperspace(){
  if(frameCount-framesLH>600){
    myCenterX = Math.random()*1821;
    myCenterY = Math.random()*981;
    myXspeed = 0; myYspeed = 0 ;
    myPointDirection = (int)(Math.random()*361);
    framesLH = frameCount;
  }
 }
 
}
