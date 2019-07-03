Ground g;
Ball5 b;
Enemy5 e[];
Keeper k;
Option o;
Title t;
Clear c;

int n=10;
int stage=5;
int flag=0;
int goal=0;

void setup() {
  size(1300, 700);

  g=new Ground();
  b=new Ball5();
  e=new Enemy5[n];
  k=new Keeper();
  o=new Option();
  t=new Title();
  c=new Clear();
  for (int i=0; i<n; i++) {
    if (i%2==0) {
      e[i]=new Enemy5((int)random(width/4+30, width/4*3-30), (int)random(10, height/2), 1);
    } else {
      e[i]=new Enemy5((int)random(width/4+30, width/4*3-30), (int)random(10, height/2), -1);
    }
  }
}

void draw() {
  background(10, 150, 0);
  if (flag==0) {
    if (stage==0) {
      //t.title();
    } else if (stage==1) {
    } else if (stage==2) {
    } else if (stage==3) {
    } else if (stage==4) {
    } else if (stage==5) {
      g.lines();
      g.circle();
      g.pArc(100);
      g.pArc(height-100);
      g.pArea(50);
      g.pArea(height-50);
      g.gArea(25);
      g.gArea(height-25);
      g.black();
      b.display();
      b.gameClear();
      if(goal==0){
      k.display();
    }
      k.bound();
      k.clash(b);
      for (int i=0; i<n; i++) {
        if(goal==0){
        e[i].display();
        }
        e[i].bound();
        e[i].clash(b);
      }
      for (int i=0; i<n-1; i++) {
        for (int j=i; j<n; j++) {
          if (isCollisionBall(e[i], e[j])==true) {
            e[i].turn();
            e[j].turn();
          }
        }
      }
    }
    if (stage==6) {
      background(255);
    }
    if(goal==1){
      c.goal();
    }
  } else if (flag==1) {
    background(0);
  }
}

void keyPressed() {
  if (flag==0) {
    if(stage==5){
    b.move();
    }
  }
  if(flag==1){
    o.restart();
  }
}

boolean isCollisionBall(Enemy5 b1, Enemy5 b2) {
  if ((int)dist(b1.x, b1.y, b2.x, b2.y)<=b1.r/2+b2.r/2) {
    return true;
  } else {
    return false;
  }
}
