public class ForLoopDemo {
    //print Hello 10 times
    public void printHello() {
        for (Integer i = 0; i < 10; i++) {
            System.debug('Hello');
        }
    }
    public void printNumbers(Integer n) {
        String printStr = '';
        for (Integer i = 0; i < n; i++) {
            printStr = printStr + i + ', ';
        }
        System.debug(printStr);
    }
    public void printNumbers2(integer n){
        string s = 'this';
        s += ' is a string';
        for (Integer i = 0; i < n; i++) {
            s += ' ' + i;
            system.debug(s);//this is a string 01 2 3 4 5
        } 
    }
    public void printOddNumbers(Integer startInt, Integer endInt){
        for (Integer i = startInt; i < endInt; i++){
            Integer remainder = Math.mod(i, 2);
            if (remainder == 1) {
                System.debug(i);
            }
        }
    }
    public void printFactorial(Integer anyNumber){
        //5! = 5*4*3*2*1
        Integer factNumber = 1;
        for (Integer i = 1; i <= anyNumber; i++){
            factNumber *= i; 
        }
        System.debug(factNumber);
    }
}