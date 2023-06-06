BatchApex15 bA15 = new BatchApex15();
Database.executeBatch(bA15, 5);

// AccountsBatch ab = new AccountsBatch();
// Id batchId = Database.executeBatch(ab, 10); // default size is 200.

// Id jobId = Database.executeBatch(new DepartmentsBatch() , 10); 
// System.debug('Job Id is ' + jobId);