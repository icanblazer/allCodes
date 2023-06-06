Student student1 = new Student();
student1.firstName = 'Marry';
student1.lastName = 'Doe';
student1.className ='6E';
student1.language = 'English';
student1.art = true;
student1.sport = false;
student1.ingGrade = 95;
student1.fenGrade = 100;
student1.mathGrade = 92;
System.debug('student1 => ' + student1);
system.debug('================================');

Student student2 = new Student();
student2.firstName = 'John';
student2.lastName = 'Doe';
student2.className ='7E';
student2.language = 'Spanish';
student2.art = false;
student2.sport = true;
student2.ingGrade = 90;
student2.fenGrade = 90;
student2.mathGrade = 92;
System.debug('student2 => ' + student2);
system.debug('================================');

Student student3 = new Student('Lisa', 'Fire', 95);
System.debug('student3 => ' + student3);
system.debug('================================');

Student student4 = new Student('David', 'Fire', 100);
System.debug('student4 => ' + student4);

integer toplamOgrenci = Student.statikSayi;
system.debug('Toplam ogrenci sayimiz = ' + toplamOgrenci);