public class Loops_assignment {
    public Integer whileLoopMethod(Integer n) {
        Integer anyNumber = 1;
        while (anyNumber <= n) {
            System.debug(anyNumber);
            anyNumber++;            
        }
        return anyNumber;
    }

    public void printEven(){
        for (Integer i = 1; i <= 100; i++){
            Integer remainder = Math.mod(i, 2);
            if (remainder == 0) {
                System.debug(i);
            }
        }
    }

    public Integer printPower(Integer n){
        Integer powerNumber = n;
        for (Integer i = 1; i <= n; i++) {
            powerNumber*=n;
        }
        System.debug(powerNumber);
        return powerNumber;
    }

}