Flowers flower1 = new Flowers();
flower1.setCicekAdi('Gul');
flower1.setAdet(3);
System.debug(flower1);
string cAd = flower1.getCicekAdi();
integer adt = flower1.getAdet();
Flowers.cicekSepeti.put(cAd, adt);
//Flowers.cicekSepeti.put(flower1.getCicekAdi(), flower1.getAdet());
System.debug('flower1 => ' + flower1);
System.debug('Map => ' + Flowers.cicekSepeti);

System.debug('===============OBJ2================');
Flowers flower2 = new Flowers('Lale', 4);
//Flowers.cicekSepeti.put(flower2.getCicekAdi(), flower2.getAdet());
System.debug('flower2 => ' + flower2);
System.debug('Map => ' + Flowers.cicekSepeti);

// System.debug('=======Ornek========');
// Flowers.cicekSepeti.put('Gul', 2);
// System.debug('Map => ' + Flowers.cicekSepeti);

System.debug('========== addFlower metodu==========');
Flowers.addFlower('Gul', 5);
Flowers.addFlower('Lale', 2);
Flowers.addFlower('Menekse', 3);
System.debug('Map => ' + Flowers.cicekSepeti);

System.debug('=========== salesFlower metodu');
Flowers.salesFlower('Gul', 3);
System.debug('Map => ' + Flowers.cicekSepeti);
Flowers.salesFlower('Lale', 8);
System.debug('Map => ' + Flowers.cicekSepeti);
Flowers.salesFlower('Orkide', 3);
System.debug('Map => ' + Flowers.cicekSepeti);

System.debug('======stok======');
Flowers.stok();