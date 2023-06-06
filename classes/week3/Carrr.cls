public class Carrr {
    //variables created directly inside class 
    //body are called Class Variables
    public string carName;
    string carModel;
    public integer mfgYear;
    public string carColor;
    decimal carPrice;
   
    //class variables are accessible in all methods of the class.

    public void details(){
        system.debug('car name is ' + carName);
        system.debug('car model is ' + carModel);
        system.debug('manufacturing year ' + mfgYear);
        system.debug('color of car is ' + carColor);
        system.debug('price is ' + carPrice);
    }

    //constructor is same as class name.
    // constructor does not return anything.
    public Carrr(){
        //constructor code is called automatically when new instance is created.
        // constructor are used a lot to assign class variables values by default.
        System.debug('New car is created, constructor called automatically');
        mfgYear = 2023;
    }

    public Carrr(String brand){
        carName = brand;
        mfgYear = 1999;
    }

    public Carrr(String brand, String model, Integer year, String color, Decimal price) {
        carName = brand;
        carModel = model;
        mfgYear = year;
        carColor = color;
        carPrice = price;
    }
}