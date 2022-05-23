final float dist =0.52;
class Point{
  float x;
  float y;

  Point(float x, float y){
    this.x=x;
    this.y=y;
  
  }
  Point(Point mere, Sommet pere){
    x=mere.x*(1-dist)+pere.x*dist;
    y=mere.y*(1-dist)+pere.y*dist;
  }
  void placer(){
    point(x,y);
  }
  
}
