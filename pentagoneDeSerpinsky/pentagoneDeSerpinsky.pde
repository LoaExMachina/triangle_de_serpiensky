Sommet a, b, c,d,e,f;

final int nb=2000;
Point[] points = new Point[nb];
int i=0;
final float angle=2*PI/5;
void setup() {
  background(255);
  size(300, 300);
  strokeWeight(2);
  final float r=width/2;
  final float centre=width/2;
  a= new Sommet(centre,centre-r);
  b= new Sommet(centre+cos(PI/2-angle)*r,centre-sin(PI/2-angle)*r);
  c= new Sommet(centre+cos(PI/2-2*angle)*r,centre-sin(PI/2-2*angle)*r);
  d=new Sommet(centre+cos(PI/2-3*angle)*r,centre-sin(PI/2-3*angle)*r);
  e=new Sommet(centre+cos(PI/2-4*angle)*r,centre-sin(PI/2-4*angle)*r);

  a.tracerPentagone(b, c,d,e);  
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
    int s=int(random(0, 5));
    if (s==0) {
      stroke(255,0,0);
      points[i]=new Point(points[i-1], a);
    } else if (s==1) {
      stroke(127,127,0);
      points[i]= new Point(points[i-1], b);
    } else if (s==2) {
      stroke(0,255,0);
      points[i]=new Point(points[i-1], c);
    }else if(s==3){
      stroke(0,127,127);
      points[i]=new Point(points[i-1],d);
    }
    else if(s==4){
      stroke(0,0,255);
      points[i]=new Point(points[i-1],e);
    }

    points[i].placer();
    i++;
    chaos();
  }
}
