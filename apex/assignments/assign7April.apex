ConditionClassAssignment cca = new ConditionClassAssignment();
String getMonth1 = cca.ifClassMethod(1);
System.debug(getMonth1);
String getMonth2 = cca.ifClassMethod(13);
System.debug(getMonth2);

ConditionClassAssignment caseM = new ConditionClassAssignment();
String getQuarter1 = caseM.caseMethod('JANUARY'.toLowerCase().capitalize());
System.debug(getQuarter1);
String getQuarter2 = caseM.caseMethod('DECEMBER'.toLowerCase().capitalize());
System.debug(getQuarter2);