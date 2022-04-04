
Sommet a= new Sommet(0, 300);
Sommet b= new Sommet(300, 300);
Sommet c= new Sommet(150, 200-sqrt(30000));
int nb=3000;
Point[] points = new Point[nb];
int i=0;
void setup() {
  //background(255);
  size(300, 300);
  strokeWeight(2);
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
    points[0]= new Point(x,y);
    points[0].placer();
    i++;
    chaos();
  
  }else if(i<nb){
    int s=int(random(0,3));
    if(s==0){
      points[i]=new Point(points[i-1],a);
    }else if(s==1){
      points[i]= new Point(points[i-1],b);
    }else if(s==2){
      points[i]=new Point(points[i-1],c);
    }
    points[i].placer();
    i++;
    chaos();
    
  }


  }
