Bicycle b = new Bicycle(2, 10);
b.printState();

b.changeGear(3);
b.speedUp();
b.speedUp();
b.speedUp();

b.printState();


system.debug(Bicycle.getRating('IRON'));


Bicycle bmx = new Bicycle(5, 25);

bmx.changeGear(4);

bmx.printState();


String rating = Bicycle.getRating('CARBON');
System.debug(rating);
System.debug('=======');
System.debug(Bicycle.getRating('Tahta'));

