
ArrayList<Integer> calcul(){
  ArrayList<Integer> res = new ArrayList<Integer>();
  for (int i = 1; i <= pyramidSize; i++){
    res.add(a*(i*i) + b*i + c);
  }
  return res;
}

ArrayList<Integer> calculbis(){
  ArrayList<Integer> res = new ArrayList<Integer>();
  for (int i = 1; i <= coneSize; i++){
    res.add(abis*(i*i) + bbis*i + cbis);
  }
  return res;
}
