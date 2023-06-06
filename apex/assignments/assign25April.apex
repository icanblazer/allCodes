InventoryManager samsung = new InventoryManager();
samsung.setCostPrice(700);
samsung.setSellingPrice(1500);

samsung.setProductName('Galaxy');
samsung.setProductCode('A6');

System.debug(samsung.getProductName());
System.debug(samsung.getProductCode());
System.debug(samsung.getCostPrice());
System.debug(samsung.getSellingPrice());

samsung.productDisplay();

System.debug('=================');

InventoryManager google = new InventoryManager();

google.setProductName('Pixel');
google.setProductCode('xl');
google.setCostPrice(1500);
google.setSellingPrice(1600);

//google.getProductName();
System.debug('google product name : ' + google.getProductName());

System.debug(google.getProductCode());
System.debug(google.getCostPrice());
System.debug(google.getSellingPrice());
System.debug('____________');
google.productDisplay();

System.debug('=================');

InventoryManager apple1 = new InventoryManager('iPhone', 'XS');
InventoryManager apple2 = new InventoryManager('iMac', 'Pro');
InventoryManager apple3 = new InventoryManager('iPad', 'Air');

apple1.setCostPrice(500);
apple1.setSellingPrice(990);

System.debug('cost: ' + apple1.getCostPrice());
System.debug('price: ' + apple1.getSellingPrice());

System.debug('================');

apple1.setCostPrice(650);
apple1.setSellingPrice(1230);

System.debug('cost: ' + apple1.getCostPrice());
System.debug('price: ' + apple1.getSellingPrice());

apple1.productDisplay();

System.debug('=================');

System.debug(InventoryManager.productCount);



