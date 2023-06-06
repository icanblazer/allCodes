public with sharing class SOQL_Assignment {
    
    public static void soql_WhereClause() {
        List<Contact> lstContact = [select name from contact where name like 'A%'];
        System.debug('size of contact list: ' + lstContact.size());
    }

    public static void soql_FromMethod() {
        List<Contact> lstContact = [select lastname, phone from contact]; //where phone !=null];
        
        for (contact eachContact : lstContact) {
            if (eachContact.Phone != null) {
                System.debug('last name: ' + eachContact.LastName + ' phone: ' + eachContact.Phone);
            }
        }
    }
}