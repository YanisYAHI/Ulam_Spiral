
int x = width/2;
int y = height/2;

int pyramidSize = 100;
int coneSize = 100;

boolean rotatePyramid = false;
boolean rotateCone = false;

void setup(){
  size(1000,1000, P3D);
}

void draw(){
  background(155);
  poly();
  polybis();
  pushMatrix();
  translate(width/2-(coneSize*4),height/2,-300);
  rotateX(PI/6);
  if(rotatePyramid){
    rotateZ(frameCount/60.);
  }
  pyramid(pyramidSize);
  popMatrix();
  
  pushMatrix();
  translate(width/2+(coneSize*4),height/2,-300);
  rotateX(-PI/4);
  if(rotateCone){
    rotateY(frameCount/60.);
  }
  cone(coneSize);
  popMatrix();
  

}
