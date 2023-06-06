public class Dog {
    String name;
    String color;
    Integer age;

    public void checkAge(){
        if (age<=1) {
            System.debug('Puppy Dog');
        } else if (age<=3){
            System.debug('Young Dog');
        } else if(age<=5){
            System.debug('Adult Dog');
        } else if (age>5){
            System.debug('Old Dog');
        }
    }

    public Dog(){
        age = 1;
        checkAge();
    }

    public Dog(String dogName, String dogColor, Integer dogAge ){
        name = dogName;
        color = dogColor;
        age = dogAge;
        checkAge();
    }

    

}