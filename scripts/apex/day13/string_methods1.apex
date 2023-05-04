/**

String is a Data type to Store text 

It has a lot of reusable methods that we can use directly 
https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm#apex_System_String_methods

 */

String message = 'Hello World' ; 

//--------------Checking for String contains some substring 
/**
contains(substring)
Returns true if and only if the String that called the method contains the specified sequence of characters in substring.
https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm#apex_System_String_contains

Example :   
'abcd' contains 'ab'  true  
'abcd' contains 'ac'  false   
 */

 System.debug('message.contains(\'Hello\')  value is : ' + message.contains('Hello') );
 System.debug('message.contains(\'hello\')  value is : ' + message.contains('hello') ); 
 System.debug('message.contains(\'Jon\')  value is : ' + message.contains('Jon') ); 

/**
containsIgnoreCase(substring)
Returns true if the current String contains the specified sequence of characters without regard to case; otherwise, returns false.
 */
System.debug('message.containsIgnoreCase(\'hello\') value is : ' 
                                + message.containsIgnoreCase('hello'));
   //message.containsIgnoreCase('hello') value is : true

/**
containsNone(inputString)
Returns true if the current String doesn't contain any of the characters in the specified
String; otherwise, returns false.
 */

//System.debug('message.containsNone(\'hlo\') value is : ' + message.containsNone(\'hlo))
//System.debug( message.containsNone('Hlo') value is : false
//message.containsNone('AB') value is : true


System.debug('message.containsNone(\'Hlo\') value is : ' 
                                + message.containsNone('Hlo')   ); 

System.debug('message.containsNone(\'AB\') value is : ' 
                                + message.containsNone('AB')   ); 

System.debug('message.containsNone(\'LO\') value is : ' 
                                + message.containsNone('LO')   ); 

System.debug('message has no Number : ' + message.containsNone('0123456789')   ) ; 


/*containsOnly(inputString)
Returns true if the current String contains characters only from the specified sequence of characters 
and not any other characters; otherwise, returns false.
*/
 
 // Hello world is made of these characters  : Helo Wrd 

System.debug('message.containsOnly(\'Helowrd \') value is : ' 
                                    + message.containsOnly('HeloWrd ')); 
        //message.containsOnly('Helowrd ') value is : true

System.debug('message.containsOnly(\'He\') value is : ' + message.containsOnly('He')); 
        //message.containsOnly('He') value is : false
System.debug('message.containsOnly(\'ABC\') value is : ' + message.containsOnly('ABC')); 
        //message.containsOnly('ABC') value is : false

String text = 'aaaaoooeee';
// check if this text only contains vowel : a e o u i
System.debug('text.containsOnly(\'aeoui\') value is : ' + text.containsOnly('aeoui')  ); 
    //text.containsOnly('aeoui') value is : true

/**
join(iterableObj, separator)
Joins the elements of the specified Collection, such as a List, into a single String separated by the specified separator.
 */
List<String> strList = new List<String>{'This','is','The','Way','Student'};
String joinedText = String.join(strList , '-') ; 
System.debug('joinedText value is : ' + joinedText); 
    //joinedText value is : This-is-The-Way-Student

/**
remove(substring)
Removes all occurrences of the specified substring and returns 
the String result. */

String str = 'abcabc';
System.debug('str.remove(\'a\') value is : ' + str.remove('a')); 
        //str.remove('a') value is : bcbc

str = str.remove('a');
System.debug('str value is : ' + str); 
        //str value is : bcbc


List<Integer> num = new List<i

