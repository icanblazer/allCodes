//set value to static variable
SampleClass.sampleStaticString = '2';
//System.debug(SampleClass.sampleStaticString);

//classname.nonstaticvariable is not possible
SampleClass nonStaticObj = new SampleClass();
String printNonStaticObject = nonStaticObj.sampleString = '1';
System.debug(printNonStaticObject);

//calling non-static method
nonStaticObj.SampleMethod();


//className.methodName();
//SampleClass.sampleStaticMethod();

//changing static variable
//SampleClass.sampleStaticString = 'a new static variable value';
//SampleClass.sampleStaticMethod();
