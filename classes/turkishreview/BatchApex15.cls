public class BatchApex15 implements Database.Batchable<sObject> {

    public Database.QueryLocator start(Database.BatchableContext BC) {
        Database.QueryLocator q1 = Database.getQueryLocator([select id, name, annualRevenue from Account]);
        return q1;
    }

    public void execute(Database.BatchableContext BC, List<Account> scope) {
        List<Account> updateAccounts = new List<Account>();
        for (Account acc : scope) {
            acc.name += ' update';
            if (acc.AnnualRevenue == null) {
                acc.AnnualRevenue = 10000;
            }
            updateAccounts.add(acc);
        }
        update updateAccounts;
    }

    public void finish(Database.BatchableContext BC) {
        System.debug('Islem basari ile gerceklesti...');
    }

}