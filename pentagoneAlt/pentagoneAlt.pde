Sommet a, b, c,d,e,f;
final int nb=500000;
Point[] points = new Point[nb];
int i=0;
final float angle=2*PI/5;
void setup() {
  background(255);
  size(800, 800);
  strokeWeight(2);
  final float r=width/2;
  final float centre=width/2;
  a= new Sommet(centre,centre-r);
  b= new Sommet(centre+cos(PI/2-angle)*r,centre-sin(PI/2-angle)*r);
  c= new Sommet(centre+cos(PI/2-2*angle)*r,centre-sin(PI/2-2*angle)*r);
  d=new Sommet(centre+cos(PI/2-3*angle)*r,centre-sin(PI/2-3*angle)*r);
  e=new Sommet(centre+cos(PI/2-4*angle)*r,centre-sin(PI/2-4*angle)*r);
  
  a.tracerPentagone(b, c,d,e);  

  points[0]=new Point(random(width),random(height));
    chaos();
}
void chaos() {  
    for(int i=0; i<nb;i++){
      if (i==0) {
    points[0]= new Point(random(width), random(height));
    points[0].placer();

  } else if (i<nb) {
    int s=int(random(0, 5));
      if (s==0) {
      stroke(255,0,0);
      points[i]=new Point(points[i-1], a);
    } else if (s==1) {
      stroke(255,255,0);
      points[i]= new Point(points[i-1], b);
    } else if (s==2) {
      stroke(0,255,0);
      points[i]=new Point(points[i-1], c);
    }else if(s==3){
      stroke(0,255,255);
      points[i]=new Point(points[i-1],d);
    }
    else if(s==4){
      stroke(0,0,255);
      points[i]=new Point(points[i-1],e);
    }

  }

    points[i].placer();

  }
 }
