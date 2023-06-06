public class PrimitiveDataTypeDemo2 {
    public void printNewDate() {
        System.debug('create new date variable');

        Date newDate1 = Date.newInstance(1992, 4, 15);
        System.debug(newDate1);

        Date newDate2 = Date.newInstance(2020, 3, 20);
        System.debug(newDate2);

        Date todayDate = Date.today(); // will return us TODAY's date
        //escape character --> backslash \
        System.debug('Today\'s date is ' + todayDate);
    }

    public void printNewTime(){
        Time myTime1 = Time.newInstance(11, 10, 30, 50);
        System.debug(myTime1);
        Time myTime2 = Time.newInstance(25, 12, 15, 40);
        System.debug(myTime2);
    }

   public void printNewDateTime(){

        //methodname to create new DATETIME is newInstance
        Date        newDate2 = Date.newInstance(2020, 3, 20);
        Time myTime1 = time.newInstance(11, 10, 30, 50);
        //1. new DateTime using i) date and ii) time
        Datetime dt1 = Datetime.newInstance(newDate2, myTime1);
        system.debug('dt 1 is ' + dt1);

        //2. new DateTime using year, month, day --> time will be midnight 00000
        Datetime dt2 = Datetime.newInstance(2021,1,5);
            //2021-01-05 0000 for argentina
                // what will this time be for GMT
                    // 2021-01-05 0300
            //it create datetime with user's timezone midnight
        system.debug('dt2 is ' + dt2);//while printing, it prints gmt

        //3. datetime using year, month, day, hour, min, sec
        Datetime dt3 = Datetime.newInstance(2021, 5, 19, 6, 15, 50);
        system.debug('dt3 is ' + dt3);

           //6. current datetime
        Datetime dt6 = Datetime.now();
        system.debug('dt6 is ' + dt6);
   }

   public void printNewDateTime2(){

    datetime dt5 = datetime.newInstance(0);
    system.debug('dt 5 is ' + dt5); //1970-01-01 midnight

    long longTime = 2354878745000l; //milliseconds from 1970 Jan 1 midnight
    datetime dt55 = datetime.newInstance(longtime);
    system.debug('dt 55 is ' + dt55);

    datetime dt4 = datetime.newInstanceGmt(2021, 11, 10, 21, 15, 50);
    system.debug('dt 4 ' + dt4);


   }
}