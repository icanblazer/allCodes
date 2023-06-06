List<String> kahramanlar = new List<String>{'super', 'bat', 'he', 'iron', 'spider', 'ant'};
List<String> List1 = new List<String>();
List1 = ListSetMapCollections.heros(kahramanlar);
System.debug('Yeni liste => '+ List1);

List<integer> sayilar = new List<integer>{22, 16, 44, 5, 36, 99};
integer minSayi = ListSetMapCollections.minNumber(sayilar);
System.debug('en kucuk sayi = ' + minSayi);

List<integer> sayilar2 = new List<integer>{22, 16, 44, 5, 36, 99};
integer minSayi2 = ListSetMapCollections.minNumber2(sayilar2);
System.debug('en kucuk sayi(sort) = ' + minSayi2);

List<Integer> numbers = new List<integer>{22, 45, 11, 7, 8, 4, 35, 72, 33, 44, 67};
ListSetMapCollections.tekCiftSayilar(numbers);