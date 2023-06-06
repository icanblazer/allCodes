@isTest
public class ParametreliMetotlar15Test {
    @isTest
    private static void printWelcomeTest() {
        ParametreliMetotlar15 test = new ParametreliMetotlar15();
        test.printWelcome();
        //Assert.isNotNull(true);
    }
    @isTest
    private static void welcomePersonTest() {
        ParametreliMetotlar15 test = new ParametreliMetotlar15();
        test.welcomePerson('John');
    }
    @isTest
    private static void toplamaTest() {
        ParametreliMetotlar15 test = new ParametreliMetotlar15();
        Integer toplam = test.toplama(11, 22);
        Assert.areEqual(33, toplam);
    }
    @isTest
    private static void artikYilTest() {
        ParametreliMetotlar15 test = new ParametreliMetotlar15();
        Date dt = date.newInstance(2023, 5, 24);
        Boolean result = test.artikYil(dt);
        Assert.isFalse(result);
    }
    @isTest
    private static void uzunlukTest() {
        ParametreliMetotlar15 test = new ParametreliMetotlar15();
        Integer length = test.uzunluk('all');
        Assert.areEqual(3, length);
    }
}