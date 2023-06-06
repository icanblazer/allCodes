public class Collections {
    public static String listAssignment(Integer numberOfMonth) {
        String output_month;

        List<String> lstMonth = new List<String>{'January', 'February', 
            'March', 'April', 'May', 'June', 'July', 'August', 'September', 
            'October', 'November', 'December'};

        Integer sizeOfLstMonth = lstMonth.size();

   /*      switch on numberOfMonth {
            when  1{
                output_month = lstMonth[0];
            }
            when  2{
                output_month = lstMonth[1];
            }
            when  3{
                output_month = lstMonth[2];
            
            when  4{
                output_month = lstMonth[3];
            }
            when  5{
                output_month = lstMonth[4];
            }
            when  6{
                output_month = lstMonth[5];
            }
            when  7{
                output_month = lstMonth[6];
            }
            when  8{
                output_month = lstMonth[7];
            }
            when  9{
                output_month = lstMonth[8];
            }
            when  10{
                output_month = lstMonth[9];
            }
            when  11{
                output_month = lstMonth[10];
            }
            when  12{
                output_month = lstMonth[11];
            }
            when else {
                output_month = 'Not a valid month.';
                
            }
        } */

       if (numberOfMonth<sizeOfLstMonth && numberOfMonth>0) {
        output_month = lstMonth[numberOfMonth-1];
       } else {
        output_month = 'Not a valid month';
       }

        System.debug(output_month);
        return output_month;
    }
}