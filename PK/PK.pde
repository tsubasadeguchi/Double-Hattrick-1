int flag = 0;
int timeCounter = 0;
int limit = 10;

move_ball m;
stage_ball s;
judge j;
enemy e1,e2;
void setup(){
  size(1300,700);
  m = new move_ball();
  s = new stage_ball();
  j = new judge();
  e1 = new enemy(1500,300,20);
  e2 = new enemy(1500,80,40);
}
void draw(){
  int[] x = {800,550,820,570,760,510,730,450,760,500};
  int[] y = {630,630,500,500,350,350,230,230,100,100};
  background(255);
  int gameleft = width / 4;
  int gameright =  width* 3 / 4;
  draw_field(gameleft,gameright,height);
  
  m.write();
  s.draw_stage(x,y);
  e1.write_ell();
  e1.appear(m);
  e2.write_ell();
  e2.appear(m);
  //timecount
  if(flag != 1){
    timeCounter += 1;
    if(timeCounter % 60 == 0 && limit > 0){
      limit -= 1;
    }
  }
  
  if(limit != 0 && j.ball_judge(m,x,y) == true){
    fill(0);
    textSize(50);
    text(nf(limit,2),0,50);
  }
  if(flag == 1){
    fill(255,0,0);
    textAlign(CENTER);
    textSize(100);
    text("GOAL!!!!!!!!",width/2,height/2);
  }
  if(j.ball_judge(m,x,y)==false || limit == 0 ||
  e1.judge(m) == false || e2.judge(m) == false){
    fill(255,0,0);
    textAlign(CENTER);
    textSize(100);
    text("No Goal",width/2,height/2);
    flag = 2;
  }
  if(flag == 2){
    fill(255,0,0);
    textAlign(CENTER);
    textSize(100);
    text("No Goal",width/2,height/2);
  }
}

void draw_field(int lx,int rx,int h){
  fill(0,255,0);
  rect(lx,0,rx-lx,h);
}

void keyPressed(){
  if(flag != 2){
    m.move();
  }
}
