public class ExtraDers {
    public String dersAdi;
    public Integer dersNo;
    
    public ExtraDers(String courseName) {
        this.dersAdi = courseName;
    }

    public ExtraDers(String courseName, Integer courseNum) {
        this.dersAdi = courseName;
        this.dersNo = courseNum;
    }

    public Integer yazdir(){
        System.debug('Dersin Adi: ' + this.dersAdi);
        System.debug('Ders Kodu: ' + this.dersNo);
    }
}