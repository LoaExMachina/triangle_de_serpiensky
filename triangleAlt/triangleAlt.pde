Sommet a, b, c;
final int nb=500000;
Point[] points = new Point[nb];
int i=0;
final float angle=2*PI/5;
void setup() {
  background(255);
  size(800, 800);
  strokeWeight(2);

  a= new Sommet(0, height);
  b= new Sommet(width, height);
  c= new Sommet(width/2, height-sqrt(a.y*a.y-width*width/4));
  a.tracerTriangle(b, c);  

  points[0]=new Point(random(width), random(height));
  chaos();
}
void chaos() {  
  for (int i=0; i<nb; i++) {
    if (i==0) {
      points[0]= new Point(random(width), random(height));
      points[0].placer();
    } else if (i<nb) {
      int s=int(random(0, 3));
      if (s==0) {
        stroke(255, 0, 0);
        points[i]=new Point(points[i-1], a);
      } else if (s==1) {
        points[i]= new Point(points[i-1], b);
        stroke(0, 255, 0);
      } else if (s==2) {
        stroke(0, 0, 255);
        points[i]=new Point(points[i-1], c);
      } 
      points[i].placer();
      
    }
  }
}
