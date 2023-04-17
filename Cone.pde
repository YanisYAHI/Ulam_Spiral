void cone(int size){
   int radius=50;
   int compt=1;
   float val=0;

   noStroke();
   for(int z = 0; z<radius*1000; z+=radius) {
     translate(0, radius, 0);
     val=3*radius/(PI*z);
     float k = PI;
     while(k>-PI){
       if (compt>=size){
         return;
       }
       else{ 
       translate(z*cos(k), 0, z*sin(k));
       sphereDetail(10);
       coneSphere(radius/2,calculbis().get(compt-1));
       translate(-(z*cos(k)), 0, -(z*sin(k)));
       compt+=1;
       }
       k-=val;
     }
  }
}
