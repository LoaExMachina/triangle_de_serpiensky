class Point{
  float x;
  float y;

  Point(float x, float y){
    this.x=x;
    this.y=y;
  
  }
  Point(Point mere, Sommet pere){
    x=mere.x/dist+pere.x*(1-1/dist);
    y=mere.y/dist+pere.y*(1-1/dist);
  }
  void placer(){
    stroke(0);
    strokeWeight(1);
    point(x,y);
  }
  
}
