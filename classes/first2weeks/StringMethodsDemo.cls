public class StringMethodsDemo {
    public void stringMethod1() {
        system.debug('practice string methods');
        String sDesc = 'learning string methods in apex language';

        //1. Req: legnth methods returns Integer 
        Integer strLength = sDesc.length();
        system.debug('length of string is ' + strLength);

        //2. CONVERT sDesc to UPPERCASE
            // we use method .toUpperCase();
        String upSDesc = sDesc.toUpperCase();
        system.debug('uppercase string ==> ' + upSDesc);

        //3.a. check if string contains 'apex' inside string
        Boolean checkApex = sDesc.contains('apex');
        system.debug('check if string contains apex ==> ' + checkApex);

        //3.b. check if string contains 'salesforce' inside string
        Boolean checkSalesforce = sDesc.contains('salesforce');
        system.debug('check if string contains salesforce ==> ' + checkSalesforce);

        //3.c. containsIgnoreCase - case insensitive
         Boolean checkApex2 = sDesc.contains('Apex');
        system.debug('check if string contains apex(ignoring Case) ==> ' + checkSalesforce);
    }

    public void stringMethod2(){
        //1. trim
        string username = ' vitap r  ';
        system.debug('actual length ' + username.length());
        username = username.trim();//is this line understandable?
        system.debug('after trim ' + username);
        system.debug(username.length());

        string username2 = 'vitap';
        //check if username is same as username2
        boolean checkNames = username.equals(username2);
        system.debug('check if username is same as username2 ==> ' + checkNames);

        boolean checkNames2 = username.equals('Vitap R');//equals method is case sensitive
        system.debug('check if username is same as Vitap R ==> ' + checkNames2);

        boolean checkNames3 = username.equalsIgnoreCase('Vitap R');//equalsIgnoreCase method is case insensitive
        system.debug('check if username is same as Vitap R(ignorecase) ==> ' + checkNames3);
    }

    
}