Sommet a, b, c;

int nb=2400;
Point[] points = new Point[nb];
int i=0;

void setup() {
  background(255);
  size(300, 300);
  strokeWeight(2);

  a= new Sommet(0, height);
  b= new Sommet(width, height);
  c= new Sommet(width/2, height-sqrt(a.y*a.y-width*width/4));
  //c= new Sommet(300, 0);
  a.tracerTriangle(b, c);  
  chaos();
}
void chaos() {  

  if (i==0) {
    float x=random(a.x, b.x);
    float y;
    if (x<c.x) {
      y=random(height+x*((a.y-c.y)/(a.x-c.x)), b.y);
    } else {
      y=random(c.y+(x-c.x)*((c.y-b.y)/(c.x-b.x)), height);
    }
    points[0]= new Point(x, y);
    points[0].placer();
    i++;
    chaos();
  } else if (i<nb) {
    int s=int(random(0, 3));
    if (s==0) {
      stroke(255,0,0);
      points[i]=new Point(points[i-1], a);
    } else if (s==1) {
      stroke(0,255,0);
      points[i]= new Point(points[i-1], b);
    } else if (s==2) {
      stroke(0,0,255);
      points[i]=new Point(points[i-1], c);
    }
    points[i].placer();
    i++;
    chaos();
  }
}
