Book b1 = new book('The Great Gatsby', 'Scot', 10.50);
b1.printDetails();

Book b4 = new Book('Moby Dick', 'Meville', 15.00, 1955);
b4.printDetails();

System.debug('==========');

b4.setBaslik('Balinanin Intikami');
b4.printDetails();

System.debug('=============');

Book kitap1 = new Book ('Harbiye', 'Peyami', 9, 1945);
kitap1.printDetails();
System.debug('==========');
kitap1.setYazar('safa');
String yazarinAdi = kitap1.getYazar();
System.debug(yazarinAdi);
System.debug(kitap1.getYazar());
System.debug('=======');
kitap1.printDetails();



decimal p1 = b1.getPrice();
system.debug(p1);

b1.setPrice(14.25);
b1.printDetails();


Book b2 = new book('Harry potter', 'Rowling', 25.50);
b2.printDetails();
b2.setPrice(30.99);
b2.printDetails();


Book b3 = new book('Harry potter', 'Rowling', 30.99);