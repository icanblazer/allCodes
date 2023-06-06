public class AccountHandler_assg {
    public static void createContact(List<Account> triggerNew, List<Account> triggerOld, Map<Id,Account> triggerNewMap, Map<Id,Account> triggerOldMap) {
        List<Contact> conList = new List<Contact>();
        for (Account acc : triggerNew) {
            Contact con = new Contact();
            con.AccountId = acc.Id;
            con.LastName = acc.Name;
            conList.add(con);
        }
        insert conList;
    }
}