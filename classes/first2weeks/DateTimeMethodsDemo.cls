public class DateTimeMethodsDemo {
    public void calculateAgeInMonths(){
        date todayDate = date.today();
                                        //year, month, day
        date vitapBirthDate = date.newInstance(1990, 10, 9);

        integer ageInMonths = vitapBirthDate.monthsBetween(todayDate);
        system.debug('Vitap age in months is ' + ageInMonths);
    }

    public void calculateAgeInDays(){
        date todayDate = date.today();
                                        //year, month, day
        date vitapBirthDate = date.newInstance(1990, 10, 9);

        integer ageInDays = vitapBirthDate.daysBetween(todayDate);
        system.debug('Vitap age in days is ' + ageInDays);
    }

    public void printSubscriptionEndDate(){
         date subscriptionStartDate = Date.today();
         date subscriptionEndDate = subscriptionStartDate.addDays(1000);
         System.debug('subscription end date: ' + subscriptionEndDate);
         
         date newEndDate = date.today();
         date newStartDate = newEndDate.addDays(-1000);
         System.debug('new start date => ' + newStartDate);

         //get year from date 
         integer newSDYear = newStartDate.year();  
         integer newSDMonth = newStartDate.month();
         System.debug('year of new start date is ' + newSDYear);  
         System.debug('month of new start date is ' + newSDMonth);  
    }

    public void offerEndDateTime(){
        Datetime offerStart = Datetime.now();
        Datetime offerEnding = offerStart.addHours(51);
        System.debug('offer end datetime ' + offerEnding);    
    }
}