 List<Salesforce_Project__c> listSP = new List<Salesforce_Project__c>();

for (Integer i = 0; i < 5; i++) {
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Project_Name__c = 'trigger check ' + i;
        sp.Status__c = 'New';
        listSP.add(sp);
}

insert listSP;

// Another way of creating an instance with default values.
list<case> listCase = new list<case>();
//we want to insert more than 200 cases in ONE DML.
for (Integer i = 0; i < 205; i++) {
    Case c = new case(subject = 'there is a bug', Description = 'resolve it man', Status = 'New', Origin ='Web' );
    listCase.add(c);
}
insert listCase;