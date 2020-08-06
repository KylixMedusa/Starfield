var stars = [];
var speed = 12.5;

function setup() {
  createCanvas(400, 400);
  for(let i=0;i<800;i++)
    stars.push(new Star());
}

function mouseMoved(){
  speed = map(mouseX,0,width,5,20);
}

function draw() {
  background(0);
  translate(width/2,height/2);
  for(let i=0;i<800;i++){
       stars[i].show();
      stars[i].update();
     
  }
}



