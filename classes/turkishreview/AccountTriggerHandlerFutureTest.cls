@istest
public class AccountTriggerHandlerFutureTest {

    @istest
    private static void updateDescriptionTest() {
        Account acc = new account();
        acc.Name = 'Account Future Test';
        insert acc;

        Opportunity opp = new Opportunity();
        opp.Name = 'Opportunity Future Test';
        opp.CloseDate = date.today().addDays(30);
        opp.StageName = 'Prospecting';
        opp.AccountId = acc.id;
        insert opp;

        Contact con = new contact();
        con.LastName = 'Contact Future Test';
        con.AccountId = acc.id;
        insert con;

        acc.Description = 'Account Future metot ile bu mesaj eklendi..';

        test.startTest();
        update acc;
        test.stopTest();

        Opportunity opp1 = [select id, description from Opportunity where accountId =:acc.id limit 1];
        assert.isNotNull(opp1.Description);
        assert.isTrue(opp1.Description.contains('Future'));

        Contact con1 = [select id, description from Contact where accountId =:acc.id limit 1];
        assert.isNotNull(con1.Description);
        assert.isTrue(con1.Description.contains('Future'));
    }


    // @istest
    // private static void futureTest() {
    //     account acc = new account();
    //     acc.name = 'Future Account Test';
    //     test.startTest(); //zorunlu alan
    //     insert acc;
    //     test.stopTest(); //zorunlu alan

    //     List<contact> conlist = [select id, lastName from Contact where account.name = 'Future Account Test'];
    //     assert.isTrue(conList.size()>0);
    //     assert.areEqual(1, conList.size());
    // }
}