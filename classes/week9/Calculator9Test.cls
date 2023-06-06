//One TestClass Per class or trigger.
//@isTest annotation is used to make our class as a TEST Class.
@isTest
public class Calculator9Test {
   //create test method inside test class
        //Test method means we are write method to TEST a unit of our actual code
   //req for test method - public or private, static, returns void, and take no parameter
   @isTest
   public static void testMethod1(){
        Calculator9 c = new Calculator9();
        c.add(1.1,8.5);
   }

   @IsTest
   private static void testAddMethod(){ 
        Calculator9 c = new Calculator9();
        Integer sum = c.add(5, 5);
        //assertion
        system.assertEquals(10, sum); //old way of assert
        Assert.areEqual(10, sum); //new way
   }

   @IsTest
   private static void testAddMethod2(){ 
        Calculator9 c = new Calculator9();
        Integer sum = c.add(5, 5, 5);
        //assertion
        system.assertEquals(15, sum); //old way of assert
        Assert.areEqual(15, sum); //new way
   }

   @IsTest
   private static void testLeapYearCheck(){ 
        Calculator9 c = new Calculator9();
        Boolean leapYear = c.leapYearCheck(date.today());
        //assertion
        system.assertEquals(false, leapYear); //old way of assert
        Assert.areEqual(false, leapYear); //new way
        system.assert(!leapYear);
        Assert.isFalse(leapYear, 'Not a leap year!');
        Assert.isTrue(!leapYear);
   }
}