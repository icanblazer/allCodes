public class Book {
    string title;
    string author;
    decimal price;
    integer year;

    public Book(string title, string author, decimal price, integer sene) {
        //this. means class variables
        this.title = title;
        this.author = author;
        this.price = price;
        year = sene;
        //System.debug('print this.title: ' + this.title); //class variable
        //System.debug('print title: ' + title); //parameter, or local variable
    }

    public void setBaslik(String baslik) {
        title = baslik;
    }


    public string getBaslik(){
        return title;
    }

    public void setYazar(String author){
        this.author = author;
    }

    public string getYazar(){
        return author;
    }


    public void printDetails() {
        System.debug('title of book is ' + this.title);
        System.debug('author of book is ' + this.author);
        System.debug('price of book is ' + this.price);
        System.debug('the publishing year ' + year);
    }

    //get methods are used to access private members outside of the class
    public string getTitle () {
        return this.title;
    }

    public string getAuthor () {
        return this.author;
    }

    public Decimal getPrice () {
        return this.price;
    }

    public void setPrice (decimal price) {
        this.price = price;
    }

    public void setTitle (string title) {
        this.title  = title;
    }
}