@isTest
public class AccountsBatchTest {
  @isTest
    public static void testBatch1() {
      List<Account> listAcc = new List<Account>();
      for (Integer i = 0; i < 900; i++) {
        Account ac = new Account();
        ac.Name = 'test acc ' + i;
        listAcc.add(ac);
      }
      insert listAcc;
      //for async apex, startTest and stopTest are mandatory
      Test.startTest();
      AccountsBatch ab = new AccountsBatch();
      Database.executeBatch(ab, 900);
        //we cant call future method from future method
          // we cant call future method from batch class.
      Test.stopTest();

      //assert
      List<Account> allAcc = [select id, description from Account];
      for (Account eachAcc : allAcc) {
        Assert.isTrue(eachAcc.Description.containsIgnoreCase('batch'));
      }

    }
}