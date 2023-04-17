PGraphics pg;

void myBox(int sideSize, int nb){
  color c = #696969;
  int size = sideSize/2;
  
  if(sd(nb) == nb+1){         //  nombre premier
    c = #ffff00;
  } else if(sd(nb) < 2*nb){   //  nombre déficient
    c = #e32636;
  } else if (sd(nb) == 2*nb){ //  nombre parfait
    c = #2636e3;
  } else if (sd(nb) > 2*nb){  // nombre abondant
    c = #36e326;
  }
  
  pg = createGraphics(sideSize, sideSize);
  pg.beginDraw();
  pg.background(c);
  pg.textAlign(CENTER,CENTER);
  pg.textSize(size-10);
  pg.fill(0);
  pg.text(str(nb),size, size);
  pg.endDraw();
  
  textureMode(NORMAL);
  //face devant
  beginShape();
  texture(pg.get());
  vertex(-size, -size, 0, 0);
  vertex(size, -size, 1, 0);
  vertex(size, size, 1, 1);
  vertex(-size, size, 0, 1);
  endShape();
  
  //face gauche
  beginShape();
  texture(pg.get());
  vertex(-size, -size, 0, 0, 0);
  vertex(-size,  -size, -sideSize, 0, 1);
  vertex(-size, size, -sideSize, 1, 1);
  vertex(-size,  size, 0, 1, 0);
  endShape();
  
  //face droite
  beginShape();
  texture(pg.get());
  vertex(size, -size, 0, 1, 0);
  vertex(size,  -size, -sideSize, 1, 1);
  vertex(size,   size, -sideSize, 0, 1);
  vertex(size,  size, 0, 0, 0);
  endShape();
  
  //face arrière
  beginShape();
  texture(pg.get());
  vertex(-size, -size, -sideSize, 1, 0);
  vertex(size,  -size, -sideSize, 0, 0);
  vertex(size,   size, -sideSize, 0, 1);
  vertex(-size,  size, -sideSize, 1, 1);
  endShape();
  
  //face du haut
  beginShape();
  texture(pg.get());
  vertex(-size, -size, -sideSize, 1, 1);
  vertex(size,  -size, -sideSize, 0, 1);
  vertex(size,   -size, 0, 0, 0);
  vertex(-size,  -size, 0, 1, 0);
  endShape();
  
  //face du bas
  beginShape();
  texture(pg.get());
  vertex(-size, size, -sideSize, 0, 1);
  vertex(size,  size, -sideSize, 1, 1);
  vertex(size,   size, 0, 1, 0);
  vertex(-size,  size, 0, 0, 0);
  endShape();
  
}
