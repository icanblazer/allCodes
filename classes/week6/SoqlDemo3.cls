public class SoqlDemo3 {
    //opportunity, and we will get account name, industry field
    public static void oppAccQuery() {
        list<Opportunity> listOpp = [select id, name, amount, account.name, account.industry from opportunity where account.industry = 'energy'];

        for (Opportunity eachOpp : listOpp) {
            system.debug('opp name is ' + eachOpp.Name + ', opp amount is ' + eachOpp.Amount);
            system.debug('account name is ' + eachOpp.account.Name + ' industry is ' + eachOpp.account.Industry);
            system.debug('----');
        }
    }

    public static void accContactQuery() {
        List<Account> listAcc = [select id, name, website, (select name, email from Contacts) from Account];

        for (Account eachAccount : listAcc) {
            System.debug('the name of account: ' + eachAccount.name);

            List<Contact> accContacts = eachAccount.Contacts;

            if (!accContacts.isEmpty()) {
                System.debug(eachAccount.name + ' account has ' + accContacts.size() + ' contacts.');
                for (Contact eachContact : accContacts) {
                    System.debug('contact name is ' + eachContact.Name + ', email is ' + eachContact.Email);
                }
            } else {
                System.debug('*** NO Contact has been found for this account! ***');
            }

            System.debug('----------------');
        }
    }

    //for each department we want to print number of employees, firstname, lastname and country of employee, total salary for each department, OVERALL TOTAL SALARY ALSO(optional).
    public static void deptmentDetails() {
        list<department__c> listDept = [SELECT Name__c, (SELECT first_name__c, last_name__c, country__c, salary__c FROM employees__r) FROM Department__c];

        decimal totalSalary = 0;
        for (department__c eachDept : listDept) {
            system.debug('dept name is ' + eachDept.name__c);
            List<Employee__c> listEmp = eachDept.Employees__r;

            decimal deptSalary = 0;

            for (employee__c eachEmp : listEmp) {
                system.debug('----- Name is ' + eachEmp.First_Name__c + ' ' + eachEmp.Last_Name__c + ', country is ' + eachEmp.Country__c );
                deptSalary += eachEmp.Salary__c;
                totalSalary += eachEmp.Salary__c;
                
            }
            system.debug('deptment total salary is ' + deptSalary);
            system.debug('----');
        }
        system.debug('overall total salary is ' + totalSalary);
    }
}