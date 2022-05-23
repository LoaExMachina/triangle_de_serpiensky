Sommet a, b, c, d;
final int nb=500000;
Point[] points = new Point[nb];
int i=0;
final float angle=2*PI/5;
void setup() {
  background(255);
  size(800, 800);
  strokeWeight(2);

  a= new Sommet(0, 0);
  b= new Sommet(width, 0);
  c= new Sommet(width, height);
  d=new Sommet(0, height);

  a.tracerCarre(b, c, d);  

  points[0]=new Point(random(width), random(height));
  chaos();
}
void chaos() {  
  for (int i=0; i<nb; i++) {
    if (i==0) {
      points[0]= new Point(random(width), random(height));
      points[0].placer();
    } else if (i<nb) {
      int s=int(random(0, 4));
      if (s==0) {
        stroke(255, 0, 0);
        points[i]=new Point(points[i-1], a);
      } else if (s==1) {
        points[i]= new Point(points[i-1], b);
        stroke(0, 255, 0);
      } else if (s==2) {
        stroke(0, 0, 255);
        points[i]=new Point(points[i-1], c);
      } else {
        stroke(123, 122, 0);
        points[i]=new Point(points[i-1], d);
      }
      points[i].placer();
      
    }
  }
}
