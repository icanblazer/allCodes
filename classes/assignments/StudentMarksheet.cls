public class StudentMarksheet {
    String firstName;
    String lastName;
    Integer mathematics;
    Integer english;
    Integer chemistry;
    static String schoolName;

    public StudentMarksheet(){
        schoolName = 'Salesforce Public School';
    }

    public void setFirstName(String firstName){
        this.firstName = firstName;
    }

    public string getFirstName(){
        return this.firstName;
    }

    public void setLastName(String lastName){
        this.lastName = lastName;
    }

    public string getLasttName(){
        return this.lastName;
    }

    public void setMarks (Integer mathematics, Integer english, Integer chemistry){
        this.mathematics = mathematics;
        this.english = english;
        this.chemistry = chemistry;
    }

    public void showMarksheet(){
        System.debug(this.firstName + ' ' + this.lastName);
        System.debug(schoolName);
        System.debug('Mathematics: ' + this.mathematics + ', English: ' + this.english + ', Chemistry ' + this.chemistry);

        Integer sumOfMarks =  this.mathematics + this.english +  this.chemistry;

        if (sumOfMarks>=120) {
            System.debug('You passed');
        } else {
            System.debug('You need to study more');
        } 
    }
}