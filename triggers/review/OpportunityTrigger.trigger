trigger OpportunityTrigger on Opportunity (before insert, before update, after insert, after update, after delete) {

    //soru : Bir opportunity nin Amount update edildiğinde, amount olan bir opportunity create edildiginde veya amount olan bir opportunity record silindiginde bağlı olduğu accountun tüm opportunities nin Amount toplamları Accountun Description kısmına yazılsın.
 if (trigger.isAfter) {
    // 1. asama insert durumu
    if (trigger.isInsert) { 
        OpportunityTriggerHandler.insertMetot(trigger.new);
    }
    // 2. asama update durumu
    if (trigger.isUpdate) {
        OpportunityTriggerHandler.updateMetot(trigger.new, trigger.oldMap);
    }
    // 3 asama delete durumu
    if (trigger.isDelete) {
        OpportunityTriggerHandler.deleteMetot(trigger.old);
    }
 }
 
    //soru: Bir opportunitynin stage Name i update edildiğinde closed lost olarak değiştirildiğinde Description da 'çok üzgünüz' mesajını yazdırsın. closed won olarak değiştirildiğinde 'yaşasın' mesajı yazdırsın. Prospecting olarak değiştirilmek istendiğinde izin verme hata mesajı olarak 'süreci başa döndüremezsiniz..' mesajını ver.
    
//     if (trigger.isUpdate && trigger.isBefore) {
//     OpportunityTriggerHandler.stageNameUpdate(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
//  }

/*   if (trigger.isBefore) {
    if (trigger.isInsert) {
      System.debug('before insert ic ice 2 if ile ...');
    }
  }

  if (trigger.isAfter && trigger.isInsert) {
    System.debug('after insert tek if ile ...');
  } */

/* if (trigger.isInsert && trigger.isBefore) {
        System.debug('=======before insert trigger tetiklendi.===========');
        System.debug('trigger new = ' + trigger.new);
        for (Opportunity op : trigger.new) {
            System.debug('opportunity name = ' + op.Name);
            System.debug('id = ' + op.id);
            System.debug('created date = ' + op.CreatedDate);
        }
        System.debug('trigger old = ' + trigger.old);
        System.debug('trigger new Map = ' + trigger.newMap);
        System.debug('trigger old Map = ' + trigger.oldMap);
        System.debug('===================================================');
    }
    if (trigger.isInsert && trigger.isAfter) {
        System.debug('=======after insert trigger tetiklendi.===========');
        System.debug('trigger new = ' + trigger.new);
        for (Opportunity op : trigger.new) {
            System.debug('opportunity name = ' + op.Name);
            System.debug('id = ' + op.id);
            System.debug('created date = ' + op.CreatedDate);
        }
        System.debug('trigger old = ' + trigger.old);
        System.debug('trigger new Map = ' + trigger.newMap);
        System.debug('trigger old Map = ' + trigger.oldMap);
        System.debug('===================================================');
    }
    if (trigger.isUpdate && trigger.isBefore) {
        System.debug('=======before update trigger tetiklendi.===========');
        System.debug('trigger new = ' + trigger.new);
        System.debug('trigger old = ' + trigger.old);
        System.debug('trigger new Map = ' + trigger.newMap);
        System.debug('trigger old Map = ' + trigger.oldMap);
        System.debug('===================================================');
    }
    if (trigger.isUpdate && trigger.isAfter) {
        System.debug('=======after update trigger tetiklendi.===========');
        System.debug('trigger new = ' + trigger.new);
        System.debug('trigger old = ' + trigger.old);
        System.debug('trigger new Map = ' + trigger.newMap);
        System.debug('trigger old Map = ' + trigger.oldMap);
        System.debug('===================================================');
    } */

}