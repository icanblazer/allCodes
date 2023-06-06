public class DmlDemoTurkish {
   public static void createAccount(string name) {
        Account acc = new Account();
        acc.Name = name;
        insert acc;

        List<Contact> listCont = new List<Contact>();
        for (Integer i = 1; i <= 5; i++) {
            Contact cont = new Contact();
            cont.FirstName = i + ' ' + acc.Name;
            cont.LastName = 'Contact';
            cont.AccountId = acc.Id;
            listCont.add(cont);
            //insert cont;
        }
        insert listCont;
   }

   public static void highestAnnualRevenue() {
        Account acc = [SELECT id, name, annualRevenue FROM Account WHERE AnnualRevenue != null ORDER BY AnnualRevenue DESC LIMIT 1 ];
        String message = Date.today() + ' tarihi itibariyle ' + acc.Name + ', yillik kazanci ' + acc.AnnualRevenue;
        acc.Description = message;
        
        update acc;
   }

}