public class SoqlAssignment1 {

    public static List<Employee__c> topEmployees() {
        List<Employee__c> listEmp = [SELECT id, First_Name__c, Salary__c FROM Employee__c WHERE Salary__c != null ORDER BY Salary__c DESC LIMIT 5];
        for (Employee__c eachEmployee : listEmp) {
            System.debug(eachEmployee.First_Name__c + ' has salary ' + eachEmployee.Salary__c);
        }
        return listEmp;
    }

    public static List<AggregateResult> mostPopulatedCountry() {
        List<AggregateResult> countryList = [SELECT Country__c, COUNT(id) FROM Employee__c GROUP BY Country__c ORDER BY COUNT(id) DESC LIMIT 1]; 
        
        for (AggregateResult ar : countryList) {
            System.debug('most populated country: ' + ar.get('Country__c'));
        }

        return countryList;
    }

    //INSTRUCTOR SOLUTION
    public static String mostPopulatedCountry2() {
        
        AggregateResult result = [SELECT Country__c, COUNT(id) FROM Employee__c GROUP BY Country__c ORDER BY COUNT(id) DESC LIMIT 1]; 
        
        String mpCountry = String.valueOf(result.get('Country__c'));

        return mpCountry;
    }

}