
// Exception handling 
// try-catch

System.debug('My code started'); 
String s ;// = 'hello'; 

try {
    System.debug('inside try block'); 
    System.debug( s.toUpperCase() );   
    // NullPointeException object will be created and assigned to variable in the catch block 
    System.debug('end of try block');

} catch (NullPointerException e) { // e = new NullPointerException()
    // getMessage method of Exception class can be used to get more details about the exception
    System.debug('e.getMessage() value is : ' + e.getMessage());
    System.debug('inside catch block');
    System.debug('ERROR OCCURED!!!!'); 
}

System.debug('My code Finished'); 

/**
My code started
inside try block
e.getMessage() value is : Attempt to de-reference a null object
inside catch block
ERROR OCCURED!!!!
My code Finished
 */




// //Exception handling

// System.debug('My code started'); 

// //String s ;
// String s = 'hello';

// try {
//     System.debug('inside try block'); 
//     System.debug( s.toUpperCase() ); //this line throw NullPointerException
//     //
//     System.debug('End of try block'); 
    
// } catch (NullPointerException e) {// e= new NullPointerExeption()

//     System.debug('inside catch block');
//     System.debug('EROR OCCURED!!!!'); 
     
      
// }
// System.debug('My code Finished'); 



//string s;
/**
My code started
inside try block
inside catch block
EROR OCCURED!!!!
My code Finished
 */

//string s = 'hello';
/**
My code started
inside try block
HELLO
End of try block
My code Finished
 */


//Gives eroor s not initialized
// FATAL_ERROR
// System.NullPointerException: Attempt to de-reference a null object
// AnonymousBlock: line 6, column 1

/** 
In general, try-catch blocks are great because they 
will break (move to the catch statement) whenever the
exception occurs. If-else blocks rely on you predicting
when the error will happen. Edit: Also, catch blocks
won't stop your code from halting when an error is hit.

in try catch it identifies the error itself, if there is
an error it finds it, skip the code line with error and 
keeps running 
in if else you have to tell the system your error condition

so if you dont know where an error might happen, 
you use try catch

*/