public class LoopDemo {
    //print 1 to 25.
    public void print_int_while() {
        //initialize
        Integer i = 1;
        //whenever value of i is less than 25, go indide while block
        while (i <= 25) {
            System.debug(i);
            //increment or decrement
            i++;
        }
        System.debug('after while i => ' + i); // i will be 26!
    }

    public void print_int_while2(){

        //1. initialize
        integer i = 1;
        //whenever value of i is less than 25, go inside while block
        //2. exit condition
        system.debug('before while i ==> ' + i); // 1
            // ( 1 <= 3) ==> true? or false?
        while(i < 3){
            system.debug(i);
            //increment or decrement
            i++;
        }
        system.debug('after while i => ' + i);// i will be??

    }

    //printing multiple of 5 for n times
    public void print5Multiple (Integer n){
        Integer i = 0;
        while (i <= n) {
            Integer remainder = Math.mod(i, 5);
            if (remainder == 0) {
                System.debug(i);
            }
            i++;
        }
    }
}