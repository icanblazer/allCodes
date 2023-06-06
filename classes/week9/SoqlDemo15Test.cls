@isTest
public class SoqlDemo15Test {
    
    @TestSetup
    static void makeData(){
        List<Account> listAcc = new List<Account>();
        for (Integer i = 0; i < 15; i++) {
            Account acc = new Account();
            acc.Name = 'test acc ' + i;
            acc.Industry = 'Energy';
            listAcc.add(acc);
        }
        insert listAcc;

        List<Opportunity> listOpp = new List<Opportunity>();
        for (Integer i = 0; i < 30; i++) {
            Opportunity opp = new Opportunity(Name = 'test opp', StageName = 'New', CloseDate = date.today(), Amount = 50000, AccountId = listAcc[0].Id);
            listOpp.add(opp);
        }
        insert listOpp;
    }

    @IsTest
    static void testSoql1(){
        //we can use account records and opp which we created @SETUP METHOD here.
        SoqlDemo15.oppAccQuery();
    }
}