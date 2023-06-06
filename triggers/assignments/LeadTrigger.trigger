trigger LeadTrigger on Lead (before insert, before update) {
  List<Lead> leadList = trigger.new;
  if(trigger.isInsert){
    for (Lead eachLead : leadList) {
      System.debug(eachLead.Id);
      System.debug(eachLead.LastName);
      System.debug(eachLead.Company);
      System.debug(eachLead.Description);
      System.debug('--------------------');
    }
  }

  if(trigger.isUpdate){
    for (Lead eachLead : leadList) {
      System.debug(eachLead.Id);
      System.debug(eachLead.LastName);
      System.debug(eachLead.Company);
      System.debug(eachLead.Description);
      System.debug('--------------------');
    }
  }

}