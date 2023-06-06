public class ModernMaths {

  public void printFactors(integer num) {
    
    List<Integer> factorList = new List<Integer>();

    for (Integer i = 1; i <= num; i++) {
        if (Math.mod(num, i)== 0) { //10,10 == 0
            factorList.add(i);//1, 2, 5, 10
    }
  }
    System.debug(factorList);
  }

}