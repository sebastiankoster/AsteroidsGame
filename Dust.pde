class Dust{
float myX; float myY; float d; float totVelo; int frameMade; color myColor;

Dust(float myXi, float myYi, float di){
  myX = myXi;
  myY = myYi;
  d = di + (float)Math.random()*180-90;
  totVelo = (float)Math.random()/2;
  frameMade = frameCount;
  myColor = color(250,200,200);
 }


Dust(float myXi, float myYi, float di, int veloMult, color colour){
  myX = myXi;
  myY = myYi;
  d = di + (float)Math.random()*360;
  totVelo = veloMult*(float)Math.random()/2;
  frameMade = frameCount;
  myColor=colour;
 }


public void mshow(){
  myX += totVelo*cos(d*PI/180);
  myY += totVelo*sin(d*PI/180);

  stroke(myColor);
  circle(myX,myY,2);
 }
}
