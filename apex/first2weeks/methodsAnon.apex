MethodsDemo m1 = new MethodsDemo();
m1.returnMessage('Jenny');

MethodsDemo m2 = new MethodsDemo();
string printM2 = m2.returnMessage('Jenny');
System.debug(printM2);

/*****************************/

MethodsDemo2 m3 = new MethodsDemo2();
boolean r1 = m3.nameContainsA('Christina');
system.debug('Chirstina contains a? ' + r1);

system.debug('Vicky contains a? ' + m3.nameContainsA('Vicky'));

boolean r2 = m3.nameContainsA('Barcelona');
system.debug('Barcelona contains a? ' + m3.nameContainsA('Barcelona'));
system.debug('Barcelona contains a? ' + r2);