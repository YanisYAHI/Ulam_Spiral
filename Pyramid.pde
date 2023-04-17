void pyramid(int pyramidSize){
  int x = 0, y = 0 ,z = 0;
  int boxSize = 40;      // taille d'un bloc
  int step = 1;          // étape
  int lLine = 1;         // longueur de la ligne
  int status = 6;        // haut/bas/gauche/droite
  
    for( int i = 1; i <= pyramidSize; i++){
    pushMatrix();
    translate(x,y,z);
    myBox(boxSize, calcul().get(i-1));
    if(status > 4){
      status = 1;
    }
    switch (status){
      case 1:
        x += boxSize;
        if((i) % lLine == 0){
        z -= boxSize;
      }
        break;
      case 2:
        y -= boxSize;
        break;
      case 3:
        x -= boxSize;
        break;
      case 4:
        y += boxSize;
        break;
    }
    if(i % lLine == 0){
      status++;
      step++;
      if (step % 2 == 0){
        lLine++;
      }
    }
    popMatrix();
  }

}
