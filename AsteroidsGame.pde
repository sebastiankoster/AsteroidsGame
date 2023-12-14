//your variable declarations here
 Star[] galaxy;
 ArrayList<Dust> rocketSmoke;
 Spaceship leBron;
 int lastSF;
 ArrayList<Asteroid> swarm;
 ArrayList<Bullet> bfires;
 ArrayList<Rocket> rfires;
public boolean wIsPressed;
public boolean dIsPressed;
public boolean aIsPressed;
public boolean sIsPressed;
public boolean fIsPressed;
public boolean spaceIsPressed;
public boolean rIsPressed;
float timer;
float highScore;


public void setup() {
  size(1820,980);
  background(0,0,0);
  swarm = new ArrayList<Asteroid>();
  
  //populate galaxy
  galaxy = new Star[2000];
  for(int i =  0; i<galaxy.length; i++){
    galaxy[i] = new Star();
  }
  
  for (int i = 0; i<20; i++){
    swarm.add(new Asteroid());
  }
  
  rocketSmoke = new ArrayList<Dust>();

  
  //intitalize a
  leBron = new Spaceship();
  bfires= new ArrayList<Bullet>();
  rfires = new ArrayList<Rocket>();
  lastSF=0;
  highScore=1000;
  timer=0;

}


public void draw() {
  //draw stars and set background to refresh frame
  background(0,0,0);
  for(int i =  0; i<galaxy.length; i++){
    galaxy[i].show();
  }

  fill(100,100,100);
  rect(0,0,120,50,25);
  fill(256,256,256);
  textSize(40);
  textAlign(CENTER);
  text(timer,60,37);
  
  
  //move and turn spaceship
  leBron.controls();
  leBron.move();
  strokeWeight(2);
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
  if(swarm.get(i).hp<=0){
     //for(int j = 0; i<500; i++){
     // rocketSmoke.add(new Dust((float)swarm.get(i).getX(),(float)swarm.get(i).getY(),0,3,color(240,135,97)));
     // }
    swarm.remove(i);
    break;
  }
  //noFill();
  //circle((float)swarm.get(i).getX(),(float)swarm.get(i).getY(),45);
  if( abs((float)(swarm.get(i).getX()-leBron.getX()))<57 && abs((float)(swarm.get(i).getY()-leBron.getY()))<57){
  swarm.remove(i);
  timer+=2;
}
  }
  
  if(spaceIsPressed){
    if(frameCount-lastSF>6){
      bfires.add(new Bullet(leBron));
      lastSF = frameCount;
    }
  }
  
  
  if(rIsPressed){
    if(frameCount-lastSF>frameRate*1){
      rfires.add(new Rocket(leBron));
      lastSF = frameCount;
    }
  }
  
  for(int i = 0 ; i<bfires.size(); i++){
    bfires.get(i).show();
    bfires.get(i).myIndex = i;
    bfires.get(i).move();
  }
  
  
  for(int i = 0 ; i<rfires.size(); i++){

    rfires.get(i).show();
    rfires.get(i).myIndex = i;
    rfires.get(i).move();
  }

  for(int i = 0; i<rocketSmoke.size(); i++){
    if(frameCount - rocketSmoke.get(i).frameMade > (0.5+Math.random())*frameRate)
      rocketSmoke.remove(i);
    else
    rocketSmoke.get(i).mshow();
  }
  
  
  
  if(swarm.size()>0)
    timer += 1/frameRate;
  else{
  if (timer<highScore)
    highScore = (timer - timer%0.1);
  stroke(0,100,0);
  fill(100,100,100);
  rect(width-300,0,300,50,25);
  fill(256,256,256);
  textSize(40);
  textAlign(CENTER);
  text("High Score is " + highScore,width-150,37);
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
  else if (key == 'f')
    fIsPressed = true;
  else if (key == ' ')
    spaceIsPressed = true;
  else if (key == 'r')
    rIsPressed = true;
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
  else if (key == 'f')
    fIsPressed = false;
  else if (key == ' ')
    spaceIsPressed = false;
  else if (key == 'r')
    rIsPressed = false;
}
