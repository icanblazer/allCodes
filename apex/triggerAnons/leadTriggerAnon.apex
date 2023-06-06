List<Lead> listOfLeads = new List<Lead>();

for (Integer i = 1; i <= 5; i++) {  
  Lead newLead = new Lead();  
  newLead.LastName = 'Lead Trigger' + i;
  newLead.Company = ' Trigger Company';
  newLead.Description = 'Field CREATED from Anonymous';
  listOfLeads.add(newLead);
}

insert listOfLeads;


for (Lead eachLead : listOfLeads) {
  eachLead.Description = 'Field UPDATED from Anonymous';
}

update listOfLeads;




