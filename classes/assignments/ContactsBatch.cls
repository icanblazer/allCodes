public class ContactsBatch implements Database.Batchable<SObject> {
    
    public Database.QueryLocator start(Database.BatchableContext bc) {
     
        Database.QueryLocator contacts = Database.getQueryLocator([select id, name, description from Contact]);
        return contacts; 
    }

    public void execute(Database.BatchableContext bc, list<Contact> contactList){
        List<Contact> updateConts = new List<Contact>();
        for (Contact cont : contactList) {
            cont.Description = 'Updated by Batch.';
            updateConts.add(cont);
        }
        update updateConts;
    }

    public void finish(Database.BatchableContext bc){
        System.debug('batch over');
    }
}