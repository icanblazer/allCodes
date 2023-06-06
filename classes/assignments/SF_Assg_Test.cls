@isTest
public class SF_Assg_Test {
    @isTest
    public static void insertSfTest() {
        
        SF_Assg.insertSf(); 
        
        list<Salesforce_Project__c> lstsf = [SELECT id, Project_Name__c FROM Salesforce_Project__c WHERE Project_Name__c LIKE '%Phone%' limit 1 ];

        Assert.areEqual('Phone23', lstsf[0].Project_Name__c);
        
    }

    @isTest
    public static void updateSfTest() {
        SF_Assg.updateSf();
        
    }
}