public class DML2_Assignment {
    
    public static void insert_dml(String name) {
        Account acc = new Account();
        acc.Name = name + ' Assignment';
        insert acc;
        System.debug(acc);
    }

    public static void update_dml() {
        Account acc = new Account();
        acc.Name = 'Account Created';
        insert acc;
        System.debug(acc);
        System.debug('============');
        acc.Name = 'Account Updated';
        update acc;
        System.debug(acc);
    }
}