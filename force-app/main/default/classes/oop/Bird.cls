/**
 * A class extends another class
 * A class implements another interface
 * A class can only extends ! other class
 * A class can implements multiple interface
 * A class can implements a interface
 * It will be required to implements the body
 * of all the abstract methods
 */
 //Implement:This keyword is used to declare a class 
 //that impediments an interface.


public  class Bird implements Flyable {
    
    /**
     * fly method that provide implementation
     * for abstract fly() method form 
     * Flyable interface
     */
    public void fly(){
        System.debug('Bird fly with the wing'); 
    }

    public Integer flyLongRange(){
      
        return 100 ;

    }
}