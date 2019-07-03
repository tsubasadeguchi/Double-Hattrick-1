class judge{
  int size = 200;
  boolean ball_judge(move_ball m,int[] x,int[] y){
    for(int i = 0; i< 10; i++){
      if(dist(m.x,m.y,x[i],y[i]) < (m.b_size/2)+(size/2)){
        return false;
      }
    }
    if(m.x > 500 && m.x < 760 && m.y < 0 && flag != 2){
      flag = 1;
      return true;
    }
    if(m.x>width*3/4||m.x<width/4||m.y<0||m.y>height){
      return false;
    }
    return true;
  }
}
