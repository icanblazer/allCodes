public class ContactTriggerHandler {
    //all context variables as parameters inside method
        //new, old or oldMap
   /*  public static void validateContactUpdate1(List<Contact> conTriggerNew, List<Contact> conTriggerOld, Map<Id,Contact> conTriggerNewMap, Map<Id,Contact> conTriggerOldMap) {
        //check if leadSource is partner referral
            //we have to check if OLD Contact LeadSource is partner referral then throw error

            //In order to throw error, use addError() method.
            //addError() works on trigger.new only. 
            
            for (contact newContact : conTriggerNew) {
            //we want to get here OLD CONTACT
            contact oldContact = conTriggerOldMap.get(newContact.Id);
            if(oldContact.LeadSource == 'Partner Referral'){
                //throw error
                newContact.addError('Cannot update contact if Lead Source is Partner Referral');
            }
        }
    }

    public static void validateContactUpdate2 (List<Contact> conTriggerNew, List<Contact> conTriggerOld, Map<Id,Contact> conTriggerNewMap, Map<Id,Contact> conTriggerOldMap) {
        
            for (contact newContact : conTriggerNew) {
            //we want to get here OLD CONTACT Lead Source field
            contact oldContact = conTriggerOldMap.get(newContact.Id);
            if(newContact.LeadSource != oldContact.LeadSource){
                //throw error
                newContact.LeadSource.addError('Cannot update Lead Source');
            }
        }
    } */

}