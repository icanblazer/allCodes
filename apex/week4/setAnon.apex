set<string> colors = new set<string>{'red','black','white','gray','green'};
set<string> colorsInCaps = setDemo.upperCaseSet(colors);//metod icinde de debug var.
system.debug(colorsInCaps);//burada ikinci defa debug yapmis oluyoruz.

Set<string> cities = new set<string>();
        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Lisbon');
        cities.add('Tokyo');
        cities.add('TOKYO');
        cities.add('Nairobi');
        cities.add('NAIROBI');
        System.debug('cities ==> ' + cities);

        
Set<String> capsCities = SetDemo.upperCaseSet(cities);


//SetDemo.upperCaseSet();

set<integer> ns = new set<integer>();
ns.add(10);//will this work? NO! Bcs it is null...

list<integer> l = new list<integer>();
boolean check = l.isEmpty();//NO!

string s = '';
s.toUpperCase();//NO!

integer i = 0;
system.debug(i+10);

///////////////

SetDemo.citySet();

SetDemo.randomIntegerSet();

SetDemo.setFromList();

set<boolean> bs = new set<boolean>();
bs.add(true);
bs.add(false);
bs.add(null);
bs.add(true);
bs.add(false);
bs.add(null);
system.debug(bs);
