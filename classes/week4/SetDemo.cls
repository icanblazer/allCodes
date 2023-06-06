public class SetDemo {

    public static void citySet(){
        //string set example
        set<string> cities = new set<string>();
        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Lisbon');
        cities.add('Tokyo');
        cities.add('TOKYO');
        cities.add('Nairobi');
        cities.add('Nairobi');
        cities.add('Nairobi');
        cities.add('Nairobi');
        cities.add('Nairobi');

        system.debug('set of cities : ' + cities);
    }

    public static void randomIntegerSet(){
        Set<Integer> intSet = new Set<Integer>();
        intSet.add(15);
        intSet.add(25);
        intSet.add(10);
        intSet.add(15);
        intSet.add(15);
        //in the ascending order or A-Z for string and each element only once.
        System.debug(intSet);
    }

    public static void setFromList(){
        //addAll -> adding all elements of a list or set to another list or set.
        List<Integer> li = new List<Integer>{10,15,15,21,21,55,101,101};
        System.debug('list integer -> ' + li);

        //convert list to set by creating set and adding all elements from list to set
        set<integer> si = new set<integer>();
        si.addAll(li);//we can add elements from another list or set
        system.debug('set integer -> ' + si);

        list<integer> newLi = new list<integer>();
        newLi.addall(si);//we can add elements from another list or set
        system.debug('deduplicated list :  ' + newLi);
    }

    //we create set<string> and we will convert each element to uppercase and store in another set.
    public static Set<String> upperCaseSet(Set<String> pSet){
        // set<string> cities = new set<string>();
        // cities.add('Tokyo');
        // cities.add('Berlin');
        // cities.add('Lisbon');
        // cities.add('Tokyo');
        // cities.add('TOKYO');
        // cities.add('Nairobi');
        // cities.add('NAIROBI');
        // System.debug('cities ==> ' + cities);

        //create new set and add all the cities in capital
        Set<String> upperCaseSet = new Set<String>();
        
        for (String eachStr : pSet) {
            String tempStr = eachStr.toUpperCase();
            upperCaseSet.add(tempStr);
        }
        System.debug('UPPER CASED SET ==> ' + upperCaseSet);
        
        return upperCaseSet;
    }

}