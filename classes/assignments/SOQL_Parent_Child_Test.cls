@isTest
public class SOQL_Parent_Child_Test {
    @TestSetup
    static void makeData(){
        List<Account> listAcc = new List<Account>();
        for (Integer i = 1; i <= 5; i++) {
            Account acc = new Account();
            acc.Name = 'Acc ' + i;
            listAcc.add(acc);
        }
        insert listAcc;

        List<Contact> listCon = new List<Contact>();
        for (Account acc : listAcc) {
            for (Integer i = 1; i <= 5; i++) {
            Contact con = new Contact();
            con.LastName = 'Contact ' + acc.Name;
            con.AccountId = acc.Id;
            listCon.add(con);
            }
        }
        insert listCon;
    }

    @isTest
    private static void contactToAccountTest() {
        SOQL_Parent_Child.contactToAccount();
    }
    @isTest
    private static void accountToContactTest() {
        SOQL_Parent_Child.accountToContact();
    }
}