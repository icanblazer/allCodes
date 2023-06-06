public class Student {
    /*Student adında bir class
    first name
    last name
    okulu(private)
    sınıfı
    ana dili
    sanat/spor tercihi
    ingilizce notu
    matematik notu
    fen bilgisi notu

    3 öğrenci objesi oluşturun..*/
    public string firstName;
    public string lastName;
    private string schoolName = 'Dream School';
    public string className;
    public string language;
    public Boolean art;
    public Boolean sport;
    public integer ingGrade;
    public integer mathGrade;
    public integer fenGrade;

    public static integer statikSayi = 0;
    public integer nonStatikSayi = 0;

    public Student(){
        statikSayi++;
        nonStatikSayi++;
        System.debug('yeni bir ogrenci kaydi yapildi(statik variable). ogrenci sayimiz = ' + statikSayi);
        System.debug('yeni bir ogrenci kaydi yapildi(non-statik variable). ogrenci sayimiz = ' + nonStatikSayi);
    }

    public Student(string fName, string lName, integer ingNotu){
        this();//Bu metot sayesinde default constructor cagrilmis olur.
        this.firstName = fName;
        this.lastName = lName;
        this.ingGrade = ingNotu;
    }

}