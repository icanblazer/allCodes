public class SoqlDemo {
    
    public static void accountSOQL1() {
        List<Account> listAcc = [select id, name, phone, website from account];
        System.debug(listAcc);
        List<Contact> listCon = [select id, name, phone from contact];
        System.debug(listCon);
    }

    public static void accountSOQLOneR(){
        Account acc = [select id, name, phone, website from account order by name desc limit 1]; 
        System.debug(acc);
        String accName = acc.Name;//field name. similar to accessing class variable
        System.debug('name of acc: ' + accName);
        System.debug('website of acc: ' + acc.Website);
    }

    public static void accountSOQL3() {
        list<account> listAcc = [select id, name, phone, accountnumber from account order by createddate desc];

        for (account eachAcc : listAcc) {
            system.debug('each account record is ' + eachAcc);

            string accName = eachAcc.Name;
            system.debug('account name is ' + accName);
            system.debug('account phone is ' + eachAcc.Phone);
            system.debug('accountnumber is ' + eachAcc.accountnumber);
            system.debug('------');
        }
    }

    public static void accountSoqlFilter() {
        list<account> listAcc1 = [select id, name, website from account where name = 'Lux'];
        system.debug('listAcc1 ' + listAcc1);
    }

    public static void projectSoqlFilter() {
        list<salesforce_project__c> listSP = [select id, name, project_name__c, status__c, description__c from salesforce_project__c where status__c = 'New'];
        system.debug(listSP);
        system.debug('# of records => ' + listSP.size());
    }

    public static void projectSoqlFilter(string status) {
        list<salesforce_project__c> listSP = [select id, name, project_name__c, status__c, description__c from salesforce_project__c where status__c = :status];
        system.debug(listSP);
        system.debug('# of records => ' + listSP.size());
    }

}