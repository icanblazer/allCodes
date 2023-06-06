public class ListSetMapCollections {
    // {'super', 'bat', 'he', 'iron', 'spider', 'ant'} listenin her bir elemaninin sonuna 'man' ekleyin.. heman i he-man olarak yazsin
    public static List<string> heros(List<string> heroList) {
        List<String> updateHeroList = new List<String>();
        if (!heroList.isEmpty()) {
            for (string eachHero : heroList) {
                string addMan;
                if (eachHero == 'he') {
                    addMan = eachHero + '-man';
                } else {
                    addMan = eachHero + 'man';
                }
                updateHeroList.add(addMan);
            }
        }
        return updateHeroList;
    }

    //Parametre olarak integer bir list alan bir metot yazin. Bu metot listenin en kucuk elemanini donsun..
    public static Integer minNumber(List<Integer> sayiList) {
        Integer minNum;
        if (!sayiList.isEmpty()) {
            minNum = sayiList.get(0);
            for (integer sayi : sayiList) {
                if (sayi<minNum) {
                    minNum = sayi;
                }
            }
        }
        return minNum;
    }

    public static Integer minNumber2(List<Integer> sayiList) {
        Integer minNum;
        System.debug('ilk liste = ' + sayiList);
        sayiList.sort();
        System.debug('sort metodundan sonra liste = ' + sayiList);
        minNum = sayiList.get(0);
        return minNum;
    }

    //Parametre olarak integer bir list alan bir metot yazin. Bu metot tek sayilari ayri bir listede, cift sayilari ayri bir listede toplasin ve yazdirsin.. sonra her listenin en kucuk elemanini bulsun..
    public static void tekCiftSayilar(List<integer> sayilar) {
        List<Integer> tekSayilar = new List<Integer>();
        List<Integer> ciftSayilar = new List<Integer>();
        if (!sayilar.isEmpty()) {
            for (integer sayi : sayilar) {
                integer kalan = Math.mod(sayi, 2);
                if (kalan == 1) {
                    tekSayilar.add(sayi);
                } else {
                    ciftSayilar.add(sayi);
                }
            }

            System.debug('tek sayilar = ' + tekSayilar);
            System.debug('cift sayilar = ' + ciftSayilar);

            integer tekMin = minNumber(tekSayilar);
            System.debug('en kucuk tek sayi = ' + tekMin);

            integer ciftMin = minNumber(ciftSayilar);
            System.debug('en kucuk cift sayi = ' + ciftMin);
        }


    }
}