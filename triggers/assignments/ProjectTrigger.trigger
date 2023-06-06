trigger ProjectTrigger on Salesforce_Project__c (before update,before insert,after insert,after update) {

  if (trigger.isBefore && trigger.isInsert) {

    for (Salesforce_Project__c eachProject : trigger.new) {
      eachProject.Project_Name__c = 'New Trigger Project';
      System.debug(eachProject.Project_Name__c);
      }
    }

    if (trigger.isAfter && trigger.isUpdate) {

      for (Salesforce_Project__c eachProject : trigger.new) {
        System.debug('Project New Name: ' + eachProject.Project_Name__c);
        System.debug('Project Old Name: ' + trigger.oldMap.get(eachProject.Id).Project_Name__c);
      }
    }
}