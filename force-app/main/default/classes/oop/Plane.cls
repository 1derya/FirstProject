public  class Plane implements Flyable{

    public void fly(){
      
        system.debug('Plane fly with fuel');

    }

    public Integer flyLongRange(){

        return 10000 ;
    }
   
}


/**
 * Take control of your asynchronous Apex processes by using the
Queueable interface. This interface enables you to add
jobs to the queue and monitor them. Using the interface is an enhanced way of running your
asynchronous Apex code compared to using future methods.
 */