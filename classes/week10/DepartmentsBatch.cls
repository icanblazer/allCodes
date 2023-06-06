public class DepartmentsBatch implements Database.Batchable<SObject> {
   //start
   public Database.QueryLocator start (Database.BatchableContext bc) {
    System.debug('inside start method');
        return Database.getQueryLocator([select id, number_of_employees__c, (select id from employees__r) from department__c]);
   }

   public void execute (Database.BatchableContext bc, List<Department__c> scopeDep) {
        System.debug('inside execute method');
        for (Department__c eachDep : scopeDep) {
            if (eachDep.Employees__r != null) {
                eachDep.number_of_employees__c = eachDep.Employees__r.size();
            }
        }
        update scopeDep;
   }

   public void finish (Database.BatchableContext bc) {
    System.debug('finished');
   }
}