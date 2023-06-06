public class DmlDemo {
    public static void dmlInsertDemo1() {
        
        //create new instance of account
        Account acc = new Account();
        acc.name = 'Salesforce';
        acc.Website = 'www.salesforce.com';
        
        //DML
        insert acc; // similar to save button at org
    }

    public static void dmlInsertDemoCustomObject1() {
        Department__c newDepartment = new Department__c();

        newDepartment.name__c = 'Human Resources';
        newDepartment.Short_Code__c = 'HR';

        insert newDepartment;
    }

    public static void dmlInsertDemoCustomObject2() {
        //req: create new record in Salesforce Project object

        //1. create new instance.
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Project_Name__c = 'Learn DML';
        sp.Status__c = 'New';

        //create record
        //INSERT statement
        insert sp;
   }

   public static void dmlInsertDemoCustomObject3() {
    //req: create new record in Salesforce Project object

    //1. create new instance.
    Employee__c newEmp = new Employee__c();

    newEmp.First_Name__c = 'Jonathan';
    newEmp.Country__c = 'Austria';
    //hard-coded Id is NOT professional
    newEmp.Department__c = 'a0268000003J1OHAA0';// dangerous way of attaching a record with related 

    //create record
    //INSERT statement
    insert newEmp;

    }

    public static void dmlUpdateDemo1() {
        //create account
        account acc = new account();
        acc.Name = 'Softinnovas';
        system.debug('before insert DML: ' + acc);
        insert acc;
        system.debug('after insert DML: ' + acc);

        //we can update record if we have record id.
        acc.Name = 'Softinnovas INC.';
        acc.Website = 'www.softinnovas.com';

        //update statement
        update acc;
        system.debug('after update dml: ' + acc);
    }

    public static void dmlUpdateDemo2() {
        account acc = [select name from account order by createddate desc limit 1];

        acc.name = 'Softinnovas Inc.';
        //system.debug('website : ' + acc.Website);//NOt work.
        //acc.Website = 'www.sfinnovas.com';//YES.
        update acc;
   }

   //DON't DO THIS. NOT ALLOWED. Danger ahead. Illegal.
   public static void dmlInsertWrong() {
        //create related contact record.
        Contact c = new contact();
        c.lastname = 'Devil';
        c.accountid = '0013x00002SMe9SAAT';//this is NOT good practice.
        insert c;
   }

   public static void dmlInsertDemo3(){
        //soql to get acc record
        account acc = [select id, name from account order by createddate desc limit 1];

        System.debug('all acc fields as a list' + acc);

        id accountId = acc.id;
        System.debug('acc id ' + accountId);

        contact c = new contact();
      
        c.lastname = 'Biden';
        
        //relationship
        c.accountid = accountId; //get id from account record.

        //insert statement
        insert c;
   }



}