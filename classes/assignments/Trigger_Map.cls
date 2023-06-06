public class Trigger_Map {
    public static Id insertSF_Project(){
        Salesforce_Project__c newProject = new Salesforce_Project__c();
        newProject.Project_Name__c = 'New Project';
        insert newProject;
        System.debug(newProject.Id);
        return newProject.Id;
    }

    public static void UpdateSF_Project(Id projectId, String name) {
        Salesforce_Project__c updatedProject = [SELECT id, name FROM Salesforce_Project__c WHERE Id =: projectId];
        updatedProject.Project_Name__c = name;
        System.debug(updatedProject.Project_Name__c);
        update updatedProject;
    }
}