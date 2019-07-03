class stage_ball{
  int size = 200;
  void draw_stage(int[] x,int[] y){
    fill(0);
    for(int i = 0; i < 10; i++){
      ellipse(x[i],y[i],size,size);
    }
  }
}
