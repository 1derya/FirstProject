// //Square s = new Square('Box' ,  10) ; 
// // Rectangle s = new Square('Box' ,  10) ; 
// Shape s =  new Square('Box' ,  10) ; 

// // s.calculateArea();
// // System.debug('s value is : ' + s);

// // // downcast the variable s DataType to Square 
// Square sq  =  s ; 


// get the count of all Account and store it in Integer 
AggregateResult result  =  [SELECT Count(Id) total FROM Account]; 
// AggregateResult.get method will return type Object (grandparent of all things in Apex)
// in order to save it as Integer we need to downcast it to Integer 
// just like we did downcast the Shape to Square
Integer count = (Integer) result.get('total');
System.debug('count value is : ' + count);


// Integer x = 10 ;

// Integer y = x ; 






    
/**
 * A cron expression is a string consisting of six 
 * or seven subexpressions (fields) that describe 
 * individual details of the schedule. These fields, 
 * separated by white space, can contain any of the 
 * allowed values with various combinations of the 
 * allowed characters for that field.
 */
/** 
Classes and Casting | Apex Developer Guide | Salesforce Developers
In general, all type information is available at run time. This means that Apex
enables casting, that is, a data type of one class can be assigned to a data
type of another class, but only if one class is a subclass of the other class. Use casting
when you want to convert an object from one data type to another.
*/

/**
 * Upcasting is the process of converting an object of a 
 * subclass to an object of its superclass. Upcasting is 
 * always safe because a subclass object is always an 
 * instance of its superclass.
 */
/**
 * Downcasting is the opposite of upcasting. It is the 
 * process of converting an object of a superclass to an 
 * object of its subclass. Downcasting is not always safe 
 * because a superclass object may not be an instance of its 
 * subclass.
 */