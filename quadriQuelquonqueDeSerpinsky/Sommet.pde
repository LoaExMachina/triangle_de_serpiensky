class Sommet{
    float x;
  float y;
  Sommet(float x, float y){
    this.x=x;
    this.y=y;
  }
 Sommet(){
   x=0;
   y=0;
 }
  void placer(){
    point(x,y);
  }
  void tracerTriangle(Sommet a, Sommet b){
    triangle(x,y,a.x,a.y,b.x,b.y);
  }
  void tracerCarre(Sommet a, Sommet b, Sommet c){
    quad(x,y,a.x,a.y,b.x,b.y,c.x,c.y);
  }
  
}
