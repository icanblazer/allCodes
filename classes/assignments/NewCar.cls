public class NewCar {
    Integer currentSpeed = 0;
    String carType;
    String carName;

    public void startCar(String carType, String carName){
        System.debug(carType);
        System.debug(carName);
    }

    public void accelerate(integer x){
        currentSpeed+=x;
        System.debug(currentSpeed);
    }

    public void brake(integer y){
        currentSpeed-=y;
        System.debug(currentSpeed);
    }

    public void stopCar(){
        currentSpeed = 0;
        System.debug(currentSpeed);
    }

    public void checkSpeed(){
        if (currentSpeed<=30) {
            System.debug('City Mode' );
        } else if(currentSpeed<=60) {
            System.debug('Economy Mode');
        } else if (currentSpeed>60){
            System.debug('Sports Mode');
        }
    }
}