@isTest
public class IfElseConditional2Test {
    @isTest
    private static void positiveOrNegativeTest() {
        IfElseConditional2 test1 = new IfElseConditional2();

        String message1 = test1.positiveOrNegative(5);
        Assert.areEqual('Positive', message1);

        String message2 = test1.positiveOrNegative(-5);
        Assert.areEqual('Negative', message2);

        String message3 = test1.positiveOrNegative(0);
        Assert.areEqual('Sifir', message3);
    }

    @isTest
    private static void phoneTest() {
        IfElseConditional2 test2 = new IfElseConditional2();
        
        String message1 = test2.phone('2123215476');
        Assert.isNotNull(message1);

        String message2 = test2.phone('2163215476');
        Assert.isNotNull(message2);

        String message3 = test2.phone('3123215476');
        Assert.isNotNull(message3);

        String message4 = test2.phone('21232154762');
        Assert.isNotNull(message4);
    }
}