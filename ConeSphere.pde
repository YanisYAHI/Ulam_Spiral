void coneSphere(int radius, int nb){
  color c = #696969;
    if(sd(nb) == nb+1){         //  nombre premier
    c = #ffff00;
  } else if(sd(nb) < 2*nb){   //  nombre déficient
    c = #e32636;
  } else if (sd(nb) == 2*nb){ //  nombre parfait
    c = #2636e3;
  } else if (sd(nb) > 2*nb){  // nombre abondant
    c = #36e326;
  }
  fill(c);
  sphere(radius/2);
}
