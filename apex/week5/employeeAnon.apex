Employee employee1 = new Employee2('Jonny', 6000);
system.debug('salary above minimum? ' + e1.isSalaryAboveMin());

Employee.minSalary = 6200;

system.debug('salary above minimum? ' + e1.isSalaryAboveMin());

//calling it directly via class name
Employee.setMinSalary(5500);