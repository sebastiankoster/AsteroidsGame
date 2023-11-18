public class Star //note that this class does NOT extend Floater
{
  private int myX;
  private int myY;
  private int size;
  public int a;
  public int b;
  public int c;
  
  public Star(){
    myX = (int)(Math.random()*1921);
    myY = (int)(Math.random()*1081);
    size = (int)(Math.random()*3+1);
    a = (int)(Math.random()*56+200);
    b = (int)(Math.random()*106+150);
    c = (int)(Math.random()*106+150);
  }
  public void show(){
    noStroke();
    fill(a,b,c);
    ellipse(myX,myY,size,size);
    strokeWeight(2);
  }


}
