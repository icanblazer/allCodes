// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

string tempvar = 'Enter_your_name_here';
System.debug('Hello World!');
System.debug('My name is ' + tempvar);


MethodsDemo2 md = new MethodsDemo2();

//return degeri string deger olacak

System.debug(md.nameContainsA('Isa'));

Boolean adiniz = md.nameContainsA('Omer');

System.debug(adiniz);

public void returnName(Boolean boo) {
  System.debug(boo);
}

returnName(adiniz);

if (adiniz) {
  System.debug('Adinizda a harfi vardir');
}else{
  System.debug('Adinizda a harfi yoktur');
}