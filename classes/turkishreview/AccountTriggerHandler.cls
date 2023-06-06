public class AccountTriggerHandler {

    public static void updateDescription(List<Account> accNew, Map<Id,Account> accOldMap) {
        set<id> accIds = new set<id>();
         for (account acc : accNew) {
            if (acc.Description != accOldMap.get(acc.id).Description) {
                accIds.add(acc.id);
            }
         }
         //future metoda bu idleri parametre olarak gonder..
         if (!accIds.isEmpty()) {
            futureDescriptionUpdate(accIds);
         }    
    }

    @future
    public static void futureDescriptionUpdate(set<id> accIds) {
        //Bu accountlara bagli tum contactlari getirip description fieldlerini update ederiz..
        List<Contact> conList = [select id, Description, account.description from contact where accountId =:accIds];
        for (contact con : conList) {
            con.Description = con.Account.Description;
        }
        update conList;
        //Bu accountlara bagli tum opportunityleri getirip description fieldlerini update ederiz..
        List<Opportunity> oppList = [select id, Description, account.description from Opportunity where accountId =:accIds];
        for (Opportunity opp : oppList) {
            opp.Description = opp.Account.Description;
        }
        update oppList;
    }


   /* public static void createContacts(List<Account> accTriggerNew) {
        List<Contact> conList = new List<Contact>();
        for (account acc : accTriggerNew) {
            contact con = new contact();
            con.LastName = 'Contact';
            con.AccountId = acc.id;
            conList.add(con);
        }
        insert conList;
    }*/
    
    // @future
    // public static void futureCreateContacts(set<id> accIds) {
    //     List<Contact> conList = new List<Contact>();
    //     for (id accId : accIds) {
    //         contact con = new contact();
    //         con.LastName = 'Contact';
    //         con.AccountId = accId;
    //         conList.add(con);
    //     }
    //     insert conList;
    // }
}