List<string> isimList = new List<string>();

isimList.add('Ali');
isimList.add('Veli');
isimList.add('Nuri');
isimList.add('Huri');
isimList.add('Yuri');

System.debug('isim listesi => ' + isimList);

System.debug(isimList.get(2));
System.debug(isimList[2]);

// Alisveris listesi olusturalim.. kirtasiye urunleri..
List<string> alisverisList = new List<string>{'kalem', 'silgi', 'defter', 'cetvel'};
System.debug(alisverisList);
alisverisList.add('pergel');
alisverisList.add('kalemtras');
System.debug(alisverisList);
//listemizde zimba yoksa eklesin varsa eklemesin..
Boolean isThere = alisverisList.contains('zimba');//zimba varsa true yoksa false donecek
if (!isThere) {
    alisverisList.add('zimba');
}
System.debug(alisverisList);
integer elemansayisi = alisverisList.size();
System.debug('=======listenin her elemaninin yazilisi=======');
for (Integer i = 0; i < elemansayisi; i++) {
    System.debug(alisverisList.get(i));
}

System.debug('======listenin elemanlarinin tersten yazilisi=======');
for (Integer i = elemansayisi-1; i >= 0; i--) {
    System.debug(alisverisList.get(i));
}

  




