public class String_Assignment {
    public void stringAssignmen() {
        String localString = 'Thanks for the session on the string';
        Integer lengthLocalString = localString.length();
        System.debug(lengthLocalString);

        String upperLocalString = localString.toUpperCase();
        System.debug(upperLocalString);

        Boolean checkLocalString1 = localString.contains('session');
        System.debug(checkLocalString1);

        Boolean checkLocalString2 = localString.contains('sessions');
        System.debug(checkLocalString2);

        Boolean checkLocalString3 = localString.contains('SESSION');
        System.debug(checkLocalString3);
    }
}