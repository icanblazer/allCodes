BankAccount bAcc1 = new BankAccount();//set balance to 0
bAcc1.accountNumber = '13216547';
//bAcc1.balance = 1500;//does not work, because private
bAcc1.setBalance(1500);
bAcc1.deposit(500);
bAcc1.deposit(500);

bAcc1.withdraw(1500);
bAcc1.withdraw(1500);
//bAcc1.printDetails();
system.debug('=======');


BankAccount bAcc2 = new BankAccount();
bAcc2.accountNumber = '999888777';
bAcc2.printDetails();


BankAccount bAcc3 = new BankAccount('536336737', 10000.00, 'Ican', 'Bank Austria');
//bAcc3.printDetails();
//bAcc3.withdraw(1500);
bAcc3.deposit(2000);
//bAcc3.printBalance();


