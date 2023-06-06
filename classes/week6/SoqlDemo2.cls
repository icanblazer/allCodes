public class SoqlDemo2 {
    public static void accountContactSOQL() {
        List<contact> listContact = [select id, name, account.name, account.industry, account.annualRevenue, accountid from contact];


        Decimal totalRevenue = 0;

        for (contact eachContact : listContact) {
            System.debug('contact name is ' + eachContact.name);
            String accName = eachContact.Account.Name;
            System.debug('account name is ' + accName + ', acc industry is ' + eachContact.Account.Industry);

            Decimal accRevenue = eachContact.Account.AnnualRevenue;
            if (accRevenue != null) {
                totalRevenue += accRevenue;
            }
            System.debug('account revenue is ' + accRevenue);
            System.debug('------------');
        }

        System.debug('total acc revenue ' + totalRevenue);
    }

    public static void childToParent2() {
        List<Salesforce_Ticket__c> listST = [select id, name, subject__c, status__c, salesforce_project__c, salesforce_project__r.status__c, salesforce_project__r.project_name__c from salesforce_ticket__c];
  
        //PRINT ticket subject and project name only for those records where project status is new
        for (Salesforce_Ticket__c eachST : listST) {
          //how to get project's status?
              if (eachST.Salesforce_Project__r.Status__c == 'New') {
                  system.debug('ticket name is ' + eachST.Subject__c + ', its project name is ' + eachST.Salesforce_Project__r.Project_Name__c);
              }
        }
      }
}

//at developer console, from parent to child query (query inside query)
//select id, name, type, phone, website, (select id, name, email from contacts where email!=''), (select id, name from opportunities) from account
//select id, name, (select id, name, email from contacts),(select id, name from opportunities) from account order by createddate limit 1

//from child to parent
//select id, name, subject__c, status__c, salesforce_project__c, salesforce_project__r.status__c, salesforce_project__r.project_name__c from salesforce_ticket__c
