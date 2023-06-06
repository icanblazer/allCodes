public class ListDemo2 {
    
    public static void iterateList(List<Integer> pList){
        
         system.debug(pList);
         
         for (Integer eachNumber : pList) {
            System.debug(eachNumber);
         }

        //  for( integer eachNumber  : intList){
        //     system.debug('5 x '+ eachNumber + ' = ' + eachNumber*5);
        //     //system.debug(eachNumber);
        // }
    }

    public static integer add(List<Integer> pList) {
        Integer sumOfList = 0;

        for (Integer element : pList) {
            sumOfList += element;
        }
        return sumOfList;
    }

    public static void iterateListString(List<string> pList){
        //print one by one element passed in l2 list<string> along with its length
        //ex: list - 4
             //set - 3
             //map - 3
        system.debug(pList);
        for (string eachString : pList) {
             system.debug(eachString + ' - its length is ' + eachString.length());
        }
    }

    public static string concatString(list<string> pList){
        string finalString = '';
        for (string eachString : pList) {
             finalString += eachString + ' || ';
        }
        return finalString;
    }

    public static void iterateListString99() {
        list<string> ls = new list<string> {'list', 'set', 'map', 'array'};
        ls.add('methods');
        ls.add('constructor');
   
        list<string> newLS = new list<string>();
   
        //add eachString - length in the same list
             //ex: list
             //    list - 4
             //    set
             //    set - 3
        //we cannot modify(add or remove elements) in the LIST we are using in FOR EACH LOOP
        for (string eachStr : ls) {
             string temp = eachStr + ' - ' + eachStr.length();
             newLS.add(eachStr);
             newLS.add(temp);
        }
        system.debug(newLS);
      }

 }