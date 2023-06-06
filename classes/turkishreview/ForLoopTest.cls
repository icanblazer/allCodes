@isTest
public class ForLoopTest {
    @isTest
    private static void sumTest() {
        ForLoop test = new ForLoop();
        test.sum(3);
    }

    @isTest
    private static void helloTest() {
        ForLoop fl = new ForLoop();
        string msg = fl.hello('ali');
        assert.isNotNull(msg);
        assert.areEqual(' hello 1 hello 2 hello 3', msg);
    }
}