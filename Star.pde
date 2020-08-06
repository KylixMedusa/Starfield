class Star{
    float x;
    float y;
    float z;
    float pz;
    
    Star(){
      this.x=random(-width,width);
      this.y=random(-height,height);
      this.z=random(width);
      this.pz=z;
    }
    
    void update(){
        this.z=this.z-speed;
        if(this.z<1){
            this.z=width;
            this.x=random(-width,width);
            this.y=random(-height,height);
            pz=z;
        }
    }
    
    void show(){
        fill(255);
        noStroke();
        
        float sx = map(x/z,0,1,0,width);
        float sy = map(y/z,0,1,0,height);
        float r= map(z,width,0,0,18);
        
        float px = map(x/pz,0,1,0,width);
        float py = map(y/pz,0,1,0,height);
        circle(sx,sy,r);
        pz=z;
        stroke(255);
        line(px,py,sx,sy);
    }
}
