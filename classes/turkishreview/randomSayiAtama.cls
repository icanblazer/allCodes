public class randomSayiAtama {
    // Parametre olarak integer bir değer alan bir metot yazın. Bu metot içinde; Bilgisayar 0'dan 10'a kadar rastgele bir sayı oluşturacak. parametre ile bilgisayarın oluşturduğu sayıyı karşılaştıracak esitse  'dogru tahmin kazandiniz', degilse 'yanlis tahmin tekrar deneyin' mesaji dönecek.
    public static integer oyunSayisi = 0;
    public static integer skorum = 0;
    public static string randomNumber(integer sayi) {
        //Bilgisayar random bir sayi belirleyecek 0 dan 10 a kadar.
        string message;
        integer bilgisayarSayisi = math.round(Math.random()*10); 
        //2 sayiyi karsilastir esitse kazandin esit degilse tekrar dene..
        if (sayi>=0 && sayi<=10) {
            oyunSayisi++;
            System.debug('=================== ' + oyunSayisi + '. Oyun ==============');
            if (bilgisayarSayisi == sayi) {
                skorum++;
                message = 'Dogru tahmin.. Kazandiniz..';
            } else {
                message = 'Yanlis tahmin.. tekrar deneyin..';
            }
        } else {
            message = 'Lutfen 0\'dan 10\'a kadar bir sayi giriniz..';
        }
        System.debug('Bilgisayarin sayisi = ' + bilgisayarSayisi);
        System.debug('Benim sayim = ' + sayi);
        System.debug(oyunSayisi + ' oyun oynadiniz.. dogru tahmin = ' + skorum);
        return message;
    }
}