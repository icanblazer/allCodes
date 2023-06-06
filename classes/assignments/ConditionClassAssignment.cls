public class ConditionClassAssignment {
    public String ifClassMethod(Integer input) {
        String output_Month = '';
        switch on input {
            when  1 {output_Month = 'January';}
            when 2 {output_Month = 'February';}
            when 3 {output_Month = 'March';}
            when 4 {output_Month = 'April';}
            when 5 {output_Month = 'May';}
            when 6 {output_Month = 'June';}
            when 7 {output_Month = 'July';}
            when 8 {output_Month = 'August';}
            when 9 {output_Month = 'September';}
            when 10 {output_Month = 'October';}
            when 11 {output_Month = 'November';}
            when 12 {output_Month = 'December';}
            when else{output_Month = 'Not a valid Month';}
        }
        return output_Month;
    }
    public String caseMethod(String monthName){
        string output_Quarter = 'Enter a proper Month name';
        switch on monthName {
            when 'January', 'February', 'March'{output_Quarter = 'Quarter 1';}
            when 'April', 'May', 'June'{output_Quarter = 'Quarter 2';}
            when 'July', 'August', 'September'{output_Quarter = 'Quarter 3';}
            when 'October', 'November', 'December'{output_Quarter = 'Quarter 4';}
            when else {output_Quarter = 'Not a valid Quarter';}
        }
        return output_Quarter;
    }
}