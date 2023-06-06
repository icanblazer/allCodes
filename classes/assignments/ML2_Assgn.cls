public class ML2_Assgn {
    public static void insert_dml(String name) {
        Account acc = new Account();
        acc.name = name + ' Assignment';
        insert acc;
        System.debug(acc);
    }

    public static void updating_dml() {
        Account acc = new Account();
        acc.name = 'Account Created';
        insert acc;
        System.debug(acc);
        acc.name = 'Account Updated';
        update acc;
        System.debug(acc);
    }
} 