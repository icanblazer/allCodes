trigger AccountTrigger3 on Account (before insert, before update, after insert, after update) {

    //Account objecti'nin description field'inde bir update işlemi yapıldığında o account'a bağlı opportunity ve contact'ların description field'lerini account description ile aynı olacak şekilde update eden bir "future method" tasarlayınız.
    //if (trigger.isAfter && trigger.isUpdate) {
       // AccountTriggerHandler.updateDescription(trigger.new, trigger.oldMap);
        /*set<id> accIds = new set<id>();
         for (account acc : trigger.new) {
            if (acc.Description != trigger.oldMap.get(acc.id).Description) {
                accIds.add(acc.id);
            }
         }
         //future metoda bu idleri parametre olarak gonder..*/
   // }

    //1 Account create edildiğinde. ona bağlı 1 tane Contact otomatik olarak create edilsin. last name i contact diye isimlendirilsin..
//    if (trigger.isInsert && trigger.isAfter) {
//     //3. yol future metot ile cozum..
//     set<id> accIds = trigger.newMap.keySet();
//     AccountTriggerHandler.futureCreateContacts(accIds);

//     // 2. yol Handler normal metot ile cozum..
//     //AccountTriggerHandler.createContacts(trigger.new);
//     // 1.yol triggerde cozum
//        /* List<Contact> conList = new List<Contact>();
//         for (account acc : trigger.new) {
//             contact con = new contact();
//             con.LastName = 'Contact';
//             con.AccountId = acc.id;
//             conList.add(con);
//         }
//         insert conList;*/
//     }  
    
 //1 Account create edildiğinde. ona bağlı 7 tane Contact otomatik olarak create edilsin. first name'i account name ile aynı olsun. last name i contact 1 2 3.. diye isimlendirilsin..
/*    if (trigger.isInsert && trigger.isAfter) {
    List<contact> conList = new List<Contact>();
      for (account acc : trigger.new) {
         for (Integer i = 1; i <=7; i++) {
            contact c = new contact();
            c.FirstName = acc.name;
            c.LastName = 'Contact ' + i;
            c.AccountId = acc.id;
            conList.add(c);
         }
      }
      if (!conList.isEmpty()) {
        insert conList;  
      }  
   }  

   // 2. Bir account update edildiğinde name değişmişse description fieldine name değişti mesajı yazdır..
    if (trigger.isUpdate && trigger.isBefore) {
        // yeni name ve eski name yazdiralim..
        for (account acc : trigger.new) {
            string newName = acc.Name;
            string oldName = trigger.oldMap.get(acc.id).Name;
            System.debug('account new name = ' + newName);
            System.debug('account old name = ' + oldName);
            if (newName != oldName) {
                acc.Description = 'Bu recordun ismi degisti..';
            }
        }
    } */
} 