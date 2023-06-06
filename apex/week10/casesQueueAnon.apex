// Requirements:
//     - update a default account id on all cases if account id is null
//     - do it via queueable.
//         - pass account id and list of cases to update

// list<case> listCase = new list<case>();
// //we want to insert more than 200 cases in ONE DML.
// for (Integer i = 0; i < 55; i++) {
//     Case c = new case(subject = 'there is a bug', Description = 'resolve it man', Status = 'New', Origin ='Web' );
//     listCase.add(c);
// }
// insert listCase;

//create new account record
    //pass accid to queueable
Account ac = new account(name = 'Default Acc'); 
insert ac;

//get all cases where accountid is null (orphan cases)
    //pass all cases to queueable
List<case> allCase = [select id, accountid from case where accountid = null];
// //1. normal world
// CasesQueueable cq = new CasesQueueable();//this will call LINE 5
// cq.cases = allCase;
// cq.defaultAccId = ac.id;

//2. constructor world
CasesQueueable cq2 = new CasesQueueable(ac.id, allCase); //this will call LINE 8

system.enqueueJob(cq2); 
//our class execution will be queues in apex jobs
    //it will be picked by system and it will call execute method