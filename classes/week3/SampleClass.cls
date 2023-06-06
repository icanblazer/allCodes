public class SampleClass {
    //static
    public static String sampleStaticString;
    //non-static
    public String sampleString;

    //static method
    public static void sampleStaticMethod(){
        System.debug(sampleStaticString);//allowed.
        //System.debug(sampleString);//not allowed.
        System.debug('4');
        
    }

    //classic non-static method. No params. No returns.
    public void SampleMethod(){

        System.debug(sampleStaticString);//allowed.
        System.debug(sampleString);// both static and non-static variables can be called inside non-static method.
        System.debug('3');

        sampleStaticMethod();
    }

} 


