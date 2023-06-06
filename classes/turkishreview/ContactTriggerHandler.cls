public  class ContactTriggerHandler {

    public static void insertMetot(List<Contact> conTriggerNew) {
        Set<Id> accIds = new Set<Id>();
        for (Contact con : conTriggerNew) {
            if (con.AccountId != null) {
            accIds.add(con.AccountId);
            }
        }
        if (!accIds.isEmpty()) {
        numberOfContacts(accIds);
        }
   }

   public static void updateMetot(List<Contact> conTriggerNew, Map<Id,Contact> conTriggerOldMap) {
       Set<Id> accIds = new Set<Id>();
       for (Contact con : conTriggerNew) {
           contact oldCon = conTriggerOldMap.get(con.id);
           if (con.AccountId != oldCon.AccountId) {
              accIds.add(con.AccountId);
              accIds.add(oldCon.AccountId);
           }
       }
       if (!accIds.isEmpty()) {
        numberOfContacts(accIds);
       }
   }

   public static void deleteMetot(List<Contact> conTriggerOld) {
       Set<Id> accIds = new Set<Id>();
       for (Contact con : conTriggerOld) {
          if (con.AccountId != null) {
              accIds.add(con.AccountId);
          }
       }
       if (!accIds.isEmpty()) {
        numberOfContacts(accIds);
       }
   }

   public static void numberOfContacts(Set<Id> accIds) {
      List<Account> accList = [select id, Number_of_Contacts__c, (select id from contacts) from account where id in : accIds];
      for (Account acc : accList) {
        List<Contact> conList = acc.Contacts;
        acc.Number_of_Contacts__c = conList.size();
         //acc.Number_of_Contacts__c = acc.Contacts.size();
      }
      update accList;
   }

    
    public static void printLastName(List<Contact> cTriggerNew, Map<Id,Contact> cTriggerOldMap) {
        for (Contact con : cTriggerNew) {
            System.debug('Yeni Last name = ' + con.LastName +' - '+ 'Eski Last Name = ' + cTriggerOldMap.get(con.id).LastName);
        }
    }
}