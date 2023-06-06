public class ListDemo {
    public static void candidatesList(){
        List<String> listCandidate = new List<String>();
        System.debug(listCandidate);
        listCandidate.add('Marc');
        listCandidate.add('Bill');
        listCandidate.add('John');
        listCandidate.add('Torp');
        System.debug('List of Candidates ==> ' + listCandidate);
    }

    public static String candidatesList(Integer i){
        
        List<String> listCandidate = new List<String>();
        System.debug(listCandidate);
        listCandidate.add('Marc');
        listCandidate.add('Bill');
        listCandidate.add('John');
        listCandidate.add('Torp');
        System.debug('List of Candidates ==> ' + listCandidate);

        //String returnValue = '';
        
        if (i > listCandidate.size()) {
            return 'No such value found';
        } else {
            return listCandidate.get(i);
        }
       
    }

    public static void randomIntegerList(){
        List<Integer> intList = new List<Integer>();
        intList.add(90);
        intList.add(15);
        intList.add(77);
        intList.add(21);
        intList.add(35);
        intList.add(83);
        System.debug('int list ==> ' + intList);
        Integer sizeOfList = intList.size();
        System.debug('size of list is ' + sizeOfList);

        Integer int3 = intList.get(3);
        //OR
        Integer int33 = intList[3];
        System.debug(int3);
        System.debug(int33);
    }

    public static void friendList(String checkFriend) {
        list<string> friends = new list<string>();
        friends.add('Sachin');
        friends.add('Arpan');
        friends.add('Erik');
        system.debug('before ' + friends);

        Boolean checkName = friends.contains(checkFriend);//case sensitive
        System.debug(checkFriend + ' exists in list? ' + checkName);

        friends.sort();
        system.debug('after ' + friends);
    }
}
