/* Carrr bmw = new Carrr();
bmw.details();
System.debug('------------------');
Carrr ford = new Carrr();
ford.details();
System.debug('------------------');
Carrr cadillac = new Carrr('Cadillac');
cadillac.details();
System.debug('------------------'); */
Carrr tesla = new Carrr('Tesla', 'ModelX', 2022, 'Silver', 99999.99);
tesla.details();

String teslaName = tesla.carName;
String teslaColor = tesla.carColor;
//we can update the value of variable bcs it is public accessible.
tesla.carName = 'TeslaX';
tesla.carColor = 'Black';
tesla.details();

