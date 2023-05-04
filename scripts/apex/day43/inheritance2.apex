 /**   Car as Parent
 *     fields : 
            model
            price
 *     constructor :      
           2 parameter constructor to set model and price 
       methods : 
        drive

    // ElectricCar
 *     fields : 
            batteryCapacity
 *     constructor :      
           3 parameters constructor to set model, price and batteryCapacity
    // GasCar
 *     fields : 
            tankCapacity
 *     constructor :      
           3 parameters constructor to set model, price and tankCapacity

 Build parent child relationship between Car-GasCar  Car-ElectricCar
*/

ElectricCar c1 = new ElectricCar('Tesla X',95000,10);
System.debug('c1 value is : ' + c1);
c1.drive() ;

// ElectricCar c2 = new ElectricCar('Lucid',85000,8);
// System.debug('c2 value is : ' + c2);
// c2.drive();

GasCar c3 = new GasCar('Toyota Corolla',25000, 2);
System.debug('c3 value is : ' + c3);
c3.drive(); 
c3.fillupGas();

/**
 * To override a method in Apex, you need to do the following steps:

1-In the child class, create a method with the 
same name and signature as the method you want
to override in the parent class.
2-Add the override keyword before 
the method definition in the child 
class. This keyword is used to explicitly indicate that the method is intended to override the parent class method.
3-Implement the functionality for the method in the child class method. This may involve calling the parent class method using the super keyword.
 */