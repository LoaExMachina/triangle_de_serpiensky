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
  
     void tracerPentagone(Sommet b, Sommet c, Sommet d, Sommet e){
    line(x,y,b.x,b.y);
    line(b.x,b.y,c.x,c.y);
    line(c.x,c.y,d.x,d.y);
    line(d.x,d.y,e.x,e.y);
    line(e.x,e.y,x,y);

  }
  void tracerHexagone(Sommet b, Sommet c, Sommet d, Sommet e, Sommet f){
    line(x,y,b.x,b.y);
    line(b.x,b.y,c.x,c.y);
    line(c.x,c.y,d.x,d.y);
    line(d.x,d.y,e.x,e.y);
    line(e.x,e.y,f.x,f.y);
    line(f.x,f.y,x,y);
  }
  
}
