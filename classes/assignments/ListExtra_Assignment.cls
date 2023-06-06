public class ListExtra_Assignment {
    
    public static List<String> schoolsList(String medium) {
        List<String> schools = new List<String>{ 'S1 English', 'S2 English', 'S3 Turkish', 'S4 English', 'S5 Turkish', 'S6 Japanese'};

        List<String> mediumList = new List<String>();

       for (String eachSchool : schools) {
            if (eachSchool.containsIgnoreCase(medium)) {
                mediumList.add(eachSchool);
            
       }
    }
    return mediumList;
}
}