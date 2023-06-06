public class Collections_Assignment {
   public static void listMethods(List<String> pList) {
    pList.add('Monday');
    pList.add('Tuesday');
    pList.add('Wednesday');
    System.debug(pList);

    pList.add(1, 'MONDAY');
    System.debug(pList);

    pList.addAll(pList);
    System.debug(pList);

    List<String> pList2 = pList.clone();
    System.debug('clone list: ' + pList2);

    pList.clear();
    System.debug(pList);
    System.debug(pList2);

    Boolean isThere = pList2.contains('MONDAY');
    System.debug(isThere);

    Boolean isEqual = pList.equals(pList2);
    System.debug(isEqual);

    String getPListIndex = pList2.get(5);
    System.debug(getPListIndex);

    Integer result1 = pList2.indexOf('Tuesday');
    Integer result2 = pList2.indexOf('WEDNESDAY');
    System.debug(result1);
    System.debug(result2);

    Boolean isEmpty = pList.isEmpty();
    System.debug(isEmpty);

    String removedDay = pList2.remove(3);
    System.debug(removedDay);
    System.debug(pList2); 

    System.debug(pList2.size());

    pList2.sort();
    System.debug(pList2);
   }

   public static void setMethods(List<String> pList){
      Set<String> strSet = new Set<String>();

      strSet.addAll(pList);
      System.debug(strSet);
      // for (String eachStr : pList) {
      //    strSet.add(eachStr);
      // }

      // List<String> newStrList = new List<String>();
      // newStrList.addAll(strSet);
      // newStrList.add('SUNDAY');
      // System.debug(newStrList);
      
      System.debug('==================================');
      strSet.add('FRIDAY');
      System.debug(strSet);

      System.debug('==================================');
      strSet.addAll(strSet);
      System.debug(strSet); //it doesn't make sense from the same set because set doesn't accept duplicate values.

      System.debug('==================================');
      Set<String> newStrSet = strSet.clone();
      System.debug(newStrSet);

      System.debug('================================== 1');
      Boolean result1 = newStrSet.contains('Freeday');
      System.debug(result1);

      System.debug('================================== 2');
      Boolean result2 = newStrSet.containsAll(pList);
      System.debug(result2);

      System.debug('================================== 3');
      Boolean result3 = newStrSet.containsAll(strSet);
      System.debug(result3);

      System.debug('================================== 4-5');
      Boolean result4 = newStrSet.equals(strSet);
      Boolean result5 = newStrSet == strSet;
      System.debug(result4);
      System.debug(result5);

      System.debug('================================== 6');
      Boolean result6 = newStrSet.isEmpty();
      System.debug(result6);
      System.debug(newStrSet);

      System.debug('================================== 7');
      Boolean result7 = newStrSet.remove('Monday');
      System.debug(result7);
      System.debug(newStrSet);

      System.debug('================================== 8');
      Boolean result8 = newStrSet.removeAll(pList);
      System.debug(result8);
      System.debug(newStrSet);

      System.debug('================================== 9');
      Boolean result9 = newStrSet.removeAll(strSet);
      System.debug(result9);
      System.debug(newStrSet);
      System.debug(newStrSet.isEmpty());

      System.debug('================================== 10');
      Boolean result10 = newStrSet.removeAll(strSet);
      System.debug(result9);
      System.debug(newStrSet);
      System.debug(newStrSet.isEmpty());

      System.debug('================================== 11');
      newStrSet.addAll(pList);
      Boolean result11 = newStrSet.retainAll(pList);
      System.debug(result11);
      System.debug(newStrSet);

      System.debug('================================== 12');
      newStrSet.addAll(strSet);
      Boolean result12 = newStrSet.retainAll(strSet);
      System.debug(result12);
      System.debug(newStrSet);

      System.debug('================================== 13');
      Integer result13 = newStrSet.size();
      System.debug(result13);

      System.debug('================================== ');
      System.debug(newStrSet.toString());
   }
}