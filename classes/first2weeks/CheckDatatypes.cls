public class CheckDatatypes {
    public void methodBoolean(){
        boolean checkBoolean = true;
        system.debug(checkBoolean);
    }
    public void methodInteger(){
        integer varfirst = 1;
        integer varsecond = 2;
        system.debug(varfirst);
        system.debug(varsecond);
    }
    public void stringMethod(){
        string name = 'Name';
        string var2name = 'Ican';
        system.debug(name + ': ' + var2name);
    }
    public void methodId(){
        id checkId = '0013x00002RfRdAAAV';
        system.debug(checkId);
    }
    public void methodDouble(){
        double varfirst = 1.23;
        double varsecond = 209.764;
        system.debug(varfirst);
        system.debug(varsecond);
    }
}