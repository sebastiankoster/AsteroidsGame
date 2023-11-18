//your variable declarations here
public Star[] galaxy;
public Spaceship leBron;
public boolean wIsPressed;
public boolean dIsPressed;
public boolean aIsPressed;
public boolean sIsPressed;
public boolean hIsPressed;
public int totalFrames = 0;

public void setup() {
  size(1920,1080);
  background(0,0,0);
  
  //populate galaxy
  galaxy = new Star[2000];
  for(int i =  0; i<galaxy.length; i++){
    galaxy[i] = new Star();
  }
  
  //intitalize spaceship "leBron"
  leBron = new Spaceship();
}


public void draw() {
  //draw stars and set background to refresh frame
  background(0,0,0);
  for(int i =  0; i<galaxy.length; i++){
    galaxy[i].show();
  }
  
  //if(wIsPressed)
  //  leBron.accelerate(0.2);
  //else if (sIsPressed)
  //  leBron.accelerate(-0.2);
  ////noSpeedKeysPressed
  //else if(!wIsPressed && !aIsPressed){
  //  if (leBron.getXspeed()>0)
  //    leBron.accelerate(-0.1);
  //   if (leBron.getXspeed()<0)
  //    leBron.accelerate(0.1);
  //  }
  ////rotation
  //else if(aIsPressed)
  //  turn(-2);
  //else if(dIsPressed)
  //  turn((float)2);
    
  
  
  //move and turn spaceship
  leBron.controls();
  leBron.move();
  strokeWeight(6);
  stroke(10,10,200);
  leBron.show();
  strokeWeight(2);
  
}



//w,a,s,d sensing
void keyPressed()
{
  if(key=='w')
    wIsPressed = true;
  else if (key == 'a')
    aIsPressed = true;
  else if (key == 's')
    sIsPressed = true;
  else if (key == 'd')
    dIsPressed = true;
  else if (key == 'h')
    hIsPressed = true;
}
void keyReleased()
{
  if(key=='w')
    wIsPressed = false;
  else if (key == 'a')
    aIsPressed = false;
  else if (key == 's')
    sIsPressed = false;
  else if (key == 'd')
    dIsPressed = false;
  else if (key == 'h')
    hIsPressed = false;
}
