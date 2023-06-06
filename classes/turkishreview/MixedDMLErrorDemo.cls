public class MixedDMLErrorDemo {
    /*public static void myMethod() {
        Account a = new Account(Name='ApexHours');
        insert a;
        
        Profile p = [SELECT Id FROM Profile WHERE Name='Standard User'];
        UserRole r = [SELECT Id FROM UserRole WHERE Name='CEO'];
        User usr = new User(alias = 'apexs', email='apex@apexhours.com', 
            emailencodingkey='UTF-8', lastname='Hours', 
            languagelocalekey='en_US', 
            localesidkey='en_US', profileid = p.Id, userroleid = r.Id,
            timezonesidkey='America/Los_Angeles', 
            username='apexhours@apexhours.com');
        insert usr;
        
    }*/
    //Yukaridaki Dml mix error hatasini asmak icin asagidaki gibi future metodu kullaniriz..
    public static void myMethod() {
        Account a = new Account(Name='ApexHours');
        insert a;
        createUser();
    }
    @future
    public static void createUser() {
        Profile p = [SELECT Id FROM Profile WHERE Name='Standard User'];
        UserRole r = [SELECT Id FROM UserRole WHERE Name='CEO'];
        User usr = new User(alias = 'apexs', email='apex@apexhours.com', 
            emailencodingkey='UTF-8', lastname='Hours', 
            languagelocalekey='en_US', 
            localesidkey='en_US', profileid = p.Id, userroleid = r.Id,
            timezonesidkey='America/Los_Angeles', 
            username='aapexhours@apexhours.com');
        insert usr;
    }
}