public class SOQL_Parent_Child {

    
    public static void contactToAccount() {
        List<Contact> lstContact = [select accountid, account.name, Account.Fax from contact];
        
        for (contact eachContact : lstContact) {
            System.debug('account id: ' + eachContact.AccountId + ' account name: ' + eachContact.Account.Name);
            System.debug(eachContact.Account.Fax);
        }
      }
      
      
    public static void accountToContact() {
        List<Account> lstAccount = [select id, name, (select id, name from contacts) from account];

        for (Account eachAccount : lstAccount) {
            System.debug('account name: ' + eachAccount.name);

            for (Contact eachContact : eachAccount.Contacts) {
                System.debug(eachContact.Id);
                System.debug(eachContact.Name);
            }
        }

    }
}