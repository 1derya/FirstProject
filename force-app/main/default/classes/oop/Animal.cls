public abstract class Animal {

    //instance fields name, age
    public String name;
    public Integer age;

    // constructor to set those 2 fields 
    public Animal(String name,Integer age){
        this.name=name;
        this.age=age;
    }
    // abstract method called  makeNoise 
    public abstract void makeNoise();
         
        
     

    //abstract method called getInfo
    //it has param as food
    // return String
    public abstract String getInfo(String food) ;

    
    
}


/**
 * Instantiation: Creating an object by using the new keyword 
 * is called instantiation. For example, Car ca = new Car(). 
 * It creates an instance of the Car class. 

 */

 /**
* If you are going to inherit from this class and maybe override some of its methods make it virtual. 
If the class has at least one abstract method 
it becomes abstract class and you can not make
instances(objects) of this class any more.
  */
/**
 * The basic difference between a virtual and abstratc class is that 
 * methods in virtual class CAN be overridden in derived 
 * classes, while abstract class methods MUST be overridden.

 

The following link gives a good example of when we use Interface vs abstract, go through when you get a chance :

http://social.msdn.microsoft.com/Forums/en-US/8ad621b8-a915-4d7e-89c3-5dbbc47202fd/whats-the-difference-between-abstract-classes-and-interfaces
 */
/**
 * Both classes are useful for subtyping and combined with a Interface, the main difference being the abstract is incomplete.

Abstract Classes must be extended and all abstract methods MUST be overridden.  

Virtual class are functional classes and can be instantiated or extended without then need of overriding methods.

you CANNOT do this
MyAbstract absImpl = new  MyAbstract();
or
class MyNewClass extends MyAbstract {}

but you can do this:
MyVirtual vertImpl = new  MyVirtual();

class MyNewClass extends MyVirtual {}
 */

 /**
  * example regarding Difference between Abstract and Virtual classes
is looking like same.
Using virtual the child class getting method value from parent class using super keyword(super.m();) and override in method function.
abstract class is a class 
method has NO body, declare has ABSTRACT
* if class contains at least one abstract method
declare class has ABSTRACT
and it interact with child class with using override function
parent class
eg:
public abstract class abscl {
public void m1(){ // Defined and Implemented
System.debug(' I am in abscl: m1');
}
Public void m2(){ // Defined not implemented
}
public abstract void m3(); // Declared: Not Defined and Not Implemented this should be declared abtract method not implemented body method.
}

child class
public class abschd extends abscl{
public override void m3(){         // the abstract method should be declared in child class using override but object is created in child class only.

System.debug('I am in absch: m3 ');
}
}

virtual class

child class interact with parent class using extend keyword


  */
  /**
   * The virtual definition modifier declares that this class allows extension and overrides. You cannot override a method with the override keyword unless the class has been defined as virtual.

The abstract definition modifier declares that this class contains abstract methods, that is, methods that only have their signature declared and no body defined.
   */

   /**
    * Interface

To create interface we need to use interface keyword.
Interface can provide a layer of abstraction to your code.
Interface is an apex class that can contain only method signature, as a result, the body of each method must be empty.
An apex class that is using the interface must implement all methods listed in the interface.
Interface separates the specific method declaration from its implementation. Therefore you can have different implementation for the same method. Concept behind Interface is that you can change implementation without changing your whole code. Consequently, method signature (return type, parameters) are always the same.
Interface can be treated as a new data type. In Apex we have a few predefined interfaces like String, Integer, Double, etc. In other words implementation of those methods can be change (by Salesforce) without changes in our code – that’s the power of interface! e.g.: String.isBlank(‘Test’); We know method signature (public static Boolean isBlank(String inputString)), but we don’t know implementation layer.

Abstract

To create abstract class, we need to use abstract definition modifier.
Allow to extend the child class.
Abstract class can contain methods signed as abstract, to clarify, it is a method that has only a signature (body is not defined).
Child class must implement all methods declared as abstract!
Abstract class can also include other methods, which have the logic. To allow child class access those methods use protected or public keyword.
Cannot be initialize directly: new TestAbstractClass():
Abstract class can contain both virtual and abstract methods.
Abstract class is some kind of “partial” class. Therefore, some methods are implemented, some needs to be implemented by child class.
virtual methods can be override, but this is not mandatory.
We can have different signatures for our methods:
private – child class doesn’t have access to method signed as private.
protected – child class has access to parent class method, but any other class doesn’t have access.
public – In other words, making method accessible by any other class.

Virtual

To create virtual class, we need to use virtual definition modifier.
You can extend a class to provide more sophisticated behaviour.
Class that extends another class inherits all the methods and properties of the extended class.
Methods declared as virtual can be override. In other words, overriding a virtual method allows you to provide a different implementation for an existing method.
A class can only extend one other class, but it can implement more than one interface.
Virtual class can be initialize directly new TestVirtualClass();
You can use only virtual methods.
Virtual class is some kind of “full” class. All methods are implemented, but can be override by child class.

More details you can find here (https://salesforceprofs.com/abstract-virtual-interface-in-apex/).
    */

