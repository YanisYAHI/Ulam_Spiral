int a = 0;
int b = 0;
int c = 0;
int abis = 0;
int bbis = 0;
int cbis = 0;
int size = 20;
int txtSize = 30;

int txt1 = 10;
int txt2 = 500;

int x1 = txt1 + (4*txtSize);
int x2 = txt1 + (6*txtSize) + txtSize/3;
float x3 = txt1 + (9*txtSize) - txtSize/3;
float y1 = 20;
float y2 = 80;

int x1bis = txt2 + (4*txtSize);
int x2bis = txt2 + (6*txtSize) + txtSize/3;
float x3bis = txt2 + (9*txtSize) - txtSize/3;
float y1bis = 20;
float y2bis = 80;

void poly(){
  String f = "f(x) = " + a + "x² +" + b + "x +" + c;
  fill(255);
  // 1er argument
  circle(x1,y1,size);
  circle(x1,y2,size);
  // 2eme argument
  circle(x2,y1,size);
  circle(x2,y2,size);
  // 3eme argument
  circle(x3,y1,size);
  circle(x3,y2,size);
  textSize(txtSize);
  fill(0);
  text(f, txt1, 60);
  
}

void mouseClicked(){
  if (dist(x1,y1,mouseX,mouseY) < size/2){
    a++;
  } else if(dist(x1,y2,mouseX,mouseY) < size/2){
    a--;
  } else if(dist(x2,y1,mouseX,mouseY) < size/2){
    b++;
  }else if(dist(x2,y2,mouseX,mouseY) < size/2){
    b--;
  }else if(dist(x3,y1,mouseX,mouseY) < size/2){
    c++;
  }else if(dist(x3,y2,mouseX,mouseY) < size/2){
    c--;
  }
  else if (dist(x1bis,y1bis,mouseX,mouseY) < size/2){
    abis++;
  } else if(dist(x1bis,y2bis,mouseX,mouseY) < size/2){
    abis--;
  } else if(dist(x2bis,y1bis,mouseX,mouseY) < size/2){
    bbis++;
  }else if(dist(x2bis,y2bis,mouseX,mouseY) < size/2){
    bbis--;
  }else if(dist(x3bis,y1bis,mouseX,mouseY) < size/2){
    cbis++;
  }else if(dist(x3bis,y2bis,mouseX,mouseY) < size/2){
    cbis--;
  }
  calcul();
  calculbis();
}

void polybis(){
  String f = "f(x) = " + abis + "x² +" + bbis + "x +" + cbis;
  fill(255);
  // 1er argument
  circle(x1bis,y1bis,size);
  circle(x1bis,y2bis,size);
  // 2eme argument
  circle(x2bis,y1bis,size);
  circle(x2bis,y2bis,size);
  // 3eme argument
  circle(x3bis,y1bis,size);
  circle(x3bis,y2bis,size);
  textSize(txtSize);
  fill(0);
  text(f, txt2, 60);
  
}
