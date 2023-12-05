//your variable declarations here
 Star[] galaxy;
 Spaceship leBron;
 ArrayList<Asteroid> swarm;
public boolean wIsPressed;
public boolean dIsPressed;
public boolean aIsPressed;
public boolean sIsPressed;

public void setup() {
  size(1820,980);
  background(0,0,0);
  swarm = new ArrayList<Asteroid>();
  
  //populate galaxy
  galaxy = new Star[2000];
  for(int i =  0; i<galaxy.length; i++){
    galaxy[i] = new Star();
  }
  for(int i = 0; i<20; i++){
  swarm.add(new Asteroid());
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
  
  //move and turn spaceship
  leBron.controls();
  leBron.move();
  strokeWeight(6);
  stroke(10,10,200);
  leBron.show();
  strokeWeight(2);
  
  stroke(256,256,256);
  strokeWeight(4);
  noFill();
  //circle((float)leBron.getX(),(float)leBron.getY(),60);
  strokeWeight(2);

  for(int i = 0 ; i<swarm.size(); i++){
  swarm.get(i).turn(swarm.get(i).rotSpeed);
  swarm.get(i).move();
  swarm.get(i).show();
  //noFill();
  //circle((float)swarm.get(i).getX(),(float)swarm.get(i).getY(),45);
  if( abs((float)(swarm.get(i).getX()-leBron.getX()))<57 && abs((float)(swarm.get(i).getY()-leBron.getY()))<57){
  swarm.remove(i);}
  }
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
}
