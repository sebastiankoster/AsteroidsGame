public class Star{
  private int myX;
  private int myY;
  private int size;
  public int a;
  public int b;
  public int c;
  
  public Star(){
    myX = (int)(Math.random()*1821);
    myY = (int)(Math.random()*981);
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
