/* In Apex we wrap up text, also known as String insite single quote
    
*/


// This is how we can comment 
// let's get started 
/*
 This is how we can write 
  multiline comment
*/

/*
 In Apex we wrap up text, also known as String
 insite single quote  
*/

System.debug('Hello World');

// APEX is Case Insensitive language
sYsTeM.dEbUg('More Hello') ; 
// If the single quote need to be used inside String
// It will accidentally end the string 
// you can add backslash right in front of it 
// to instruct computer not to treat it as ending of the string
// just treat it as part of the text
System.debug('Let\'s learn variable');

// Creating and using variable
//DataType variable = someValueHere

string name ='SF user';

//print the value of the variable in the log
system.debug(name);

//print the value of the variable in the log
system.debug(name);
//concatenation is 
//combining one more strings together

//print My name is : the ValueOfNameVariable
system.debug('My name is :' + name);

//give new value for variable you created early
name= 'Derya';
system.debug(My new name is' + name);


//variables Data type that can store Number

integer score = 66;
//print passing score is theValueOfTheScoreVariable
system.debug('Passing scoreis' + score);

//score = 86 ;
system.debug('The result is ' + ( score +20) ); //86

//variables Data type that can store franctional Number
Decimal pi = 3.14 ;
system.debug('the value of pi: ' + pi);

Double price = 199.9;
system.debug('The price value is' + price);

Long distanceToMars = 1000000000000000000L;
system.debug('Distance to Mars long value' + distanceToMars);


//Variables Data type can store true or false
Boolean passed = true ;
system.debug('Value of passed boolean variable '+ passed);
//change the value to false and print it out
passed = false;
system.debug('Value of passed boolean variable '+ passed);

/*
Apex is case insensitive, but it's good to build good habbit of
following good coding convention 

1. Always try to keep your data type first letter uppercase the rest lowecase
2. Always start your variable with lowercase  score
    -- if you have more than one word , 
      -- use camelCase ==> myScore  theGoodStuff 

*/

thisIsCalledCamelCase
ThisIsCalledTitleCase
this_is_called_snake_case
THIS_IS_CALLED_SCREAMING_SNAKE_CASE
this-is-called-kebob-case
THIS-IS-CALLED-SCREAMING-KEBOB-CASE
Can't use kebob case for variable name because only special character allowed is underscore _

//Variables Data type  that can store Salesforce Record Id
// It's almost like specialized String variable 
// that only store string with valid record Id format
// if anything else is stored, it will throw an error
ID myLeadId = '00Q8W00000gDbIyUAK';
System.debug(myLeadId);


//Quick explanation on some Tecnical Jargons
//Declaring variable
Integer age ;

//Assigning the value of the variable
age = 20;
    
//Declaringvariable and initilizing it's value
integer amount = 100;

//re-assigning value
amount = 200;

//integer count;  // if a variable is not assigned to any value
                  // it will get null value
integer count = null ; //here we are explicitly assigning to null
system.debug('The value of count is ' + count);


// re-assign the value of count variable
// to the value of amount variable + 1000
count = amount + 1000 ; //1200
System.debug('New Value of count is ' + count );



// Operator + - * /

DataType variableName= value; 
Integer num1 = 200 ; 
integer num2 = 20;
integer result ;
// use these 2 variables to print out below result
/*
 The addition result between num1 and num2 is resultGoesHere
 The subtraction result between num1 and num2 is resultGoesHere
 The multiplication result between num1 and num2 is resultGoesHere
 The division result between num1 and num2 is resultGoesHere
*/

// addition 
result = num1+ num2 ; 

System.debug('The addition result between ' + num1 + ' and ' + num2 + ' is ' +  result );

// subtraction 
result = num1 - num2 ; 
System.debug('The subtraction result between ' + num1 + ' and ' + num2 + ' is ' +  result );

// multiplication 
result = num1 * num2 ; 
System.debug('The multiplication result between ' + num1 + ' and ' + num2 + ' is ' +  result );

// division 
result = num1 / num2 ; 
System.debug('The division result between ' + num1 + ' and ' + num2 + ' is ' +  result );

/*

Extract variables from below sentece 
create variables with proper type 
and use it in debug statement to show in the log 

 My Name is  Your Name .
 I am  X years old 
 I live in XX State 
 I attend class daily (trueOrFalse)
 I am X.XX feet tall
*/
// data type should always start with uppercase
// variable name should always start with lowercase 
// if you have more than one word use camelCase
String studentName         = 'Okan' ;
Integer studentAge         = 35 ; 
String studentState     = 'CA';
Boolean attendClass     = true ;  
Decimal studentHeight     = 5.1 ; 

System.debug('My Name is ' +  studentName  + '.'  );

System.debug('I am ' +  studentAge + ' years old.'   );

System.debug('I live in ' + studentState + ' State.' );

System.debug('I attend class daily ' + attendClass);

System.debug('I am ' + studentHeight + ' feet tall');











    

    