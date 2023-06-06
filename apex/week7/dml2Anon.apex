//DmlDemo2.insertRelatedRec2();
//DmlDemo2.insertBulkWRONG();
//DmlDemo2.soqlWrong();
//DmlDemo2.bulkInsertRight();
DmlDemo2.accountUpdate();

string s1;//null
boolean b1 = string.isBlank(s1);
system.debug('b1 is ' + b1);

string s2 = '' ;
boolean b2 = string.isBlank(s2);
system.debug('b2 is ' + b2);

string s3 = '   ';
boolean b3 = string.isBlank(s3);
system.debug('b3 is ' + b3);