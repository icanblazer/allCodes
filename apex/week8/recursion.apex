// AccountTrigger
//     - when account is updating
//         - accountTriggerCalled = true;
//         - update all opportunity record

// OpportunityTrigger
//     - accountTriggerCalled = false;
//     - New Open Opportunity created or updated
//         if(accountTriggerCalled is false)
//             -> update account record

