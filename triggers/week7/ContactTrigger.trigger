trigger ContactTrigger on Contact (before insert, after insert, before update, after update, before delete, after delete, after undelete) {

    //Yeni bir Contact create edilip bir Accounta bağlandığında, Accounta bağlı bir Contact delete edildiğinde veya Bir Contact update edilerek bir Account ile bağlantısı kesilirse veya baska bir Accounta bağlanırsa ya da bağlantı değişirse Accountta Number_of_Contacts__c fieldi güncellenecek..
    
    if (trigger.isAfter) {
      // 1. asama insert
      if (trigger.isInsert) {
        ContactTriggerHandler.insertMetot(trigger.new);
      }
      // 2. asama update
      if (trigger.isUpdate) {
        ContactTriggerHandler.updateMetot(trigger.new, trigger.oldMap);
      }
      // 3. asama delete
      if (trigger.isDelete) {
        ContactTriggerHandler.deleteMetot(trigger.old);
      }
  }


    //2 tane contact update edildiginde bunlarin eski last name ve yeni last name lerini yan yana yazdiralim..
//    if (trigger.isUpdate && trigger.isAfter) {
//      ContactTriggerHandler.printLastName(trigger.new, trigger.oldMap);
//    } 

   /*  if (trigger.isBefore && trigger.isUpdate) {
        //Call handler here
        ContactTriggerHandler.validateContactUpdate1(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
        ContactTriggerHandler.validateContactUpdate2(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
    } */

    //trigger.isBefore is true when record reaches BEFORE trigger of timeline

    /* if (Trigger.isBefore) {
        system.debug('before trigger called.');
        if (Trigger.isInsert) {
            system.debug('before insert trigger called');
        } 
        if (Trigger.isUpdate) {
            system.debug('before update trigger called');
        }
    }


    if (Trigger.isAfter) {
        system.debug('after trigger called.');
         if (Trigger.isInsert) {
            system.debug('after insert trigger called');
        } 
        if (Trigger.isUpdate) {
            system.debug('after update trigger called');
        }
    } */
}