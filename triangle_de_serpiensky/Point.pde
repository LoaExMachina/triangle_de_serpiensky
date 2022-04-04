class Point{
  float x;
  float y;
  Point(float x, float y){
    this.x=x;
    this.y=y;
  }
  Point(Point mere, Sommet pere){
    x=mere.x/2+pere.x/2;
    y=mere.y/2+pere.y/2;
  }
  void placer(){
    stroke(0);
    strokeWeight(1);
    point(x,y);
  }
  
}
