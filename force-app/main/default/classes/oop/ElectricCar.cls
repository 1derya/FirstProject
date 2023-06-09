public  class ElectricCar extends Car{
    
        
    public Integer batteryCapacity ; 

    public ElectricCar(String model, Decimal price, Integer batteryCapacity ){

        super(model, price);
        this.batteryCapacity = batteryCapacity ; 
    }

    /** We inherit the drive method from the parent
    * However we want to provide different implementation details
    * for how electricCar supposed to drive
    * in this case simply added is driving on Electricity in the print
    * in order to override parent class method
    * parent class method must be marked as virtual in method declaration line
    * child class method must use the keyword override to indicate the intention
    */

 
     public override void drive(){

        system.debug('Car'+this.model + ' is driving on Electricty');
     }
}