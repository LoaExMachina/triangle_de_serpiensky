Sommet a, b, c,d,e,f;
float dist;
final int nb=500000;
Point[] points = new Point[nb];
int i=0;
final float angle=2*PI/5;
void setup() {
  background(255);
  size(800, 800);
  strokeWeight(1);

  a= new Sommet(random(width),random(height));
  b= new Sommet(random(width),random(height));
  c= new Sommet(random(width),random(height));
  d=new Sommet(random(width),random(height));
  e=new Sommet(random(width),random(height));
  
  a.tracerPentagone(b, c,d,e);  

  points[0]=new Point(random(width),random(height));
    chaos();
}
void chaos() {  
    for(int i=0; i<nb;i++){
      dist=random(0,1);
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
