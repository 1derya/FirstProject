/*1. Write an Apex code that 
   - create a variable to store 1 Random double between 0 to 100 Math.random()*100
   - print it out 
   - print 'pass' if the number is greater than 65
   - print 'A+' if the number is between 95-100
   - run multiple time to observer the result */

//Returns a positive Double that is greater than or equal to 0.0 and less than 1.0

Double num = Math.random()*100;

System.debug(num); 

if(num>65)
System.debug('Pass');
if(num>95)
System.debug('A+');  

Double randomDbl = math.random()*100;
 System.debug('random double value is: ' + randomDbl); 
 if( randomDbl > 65 ){
    System.debug('Pass'); 
 }else if( randomDbl >= 95 && randomDbl <= 100){
    System.debug('A+'); 
    
 }else if(randomDbl < 65){
    System.debug('Try harder'); 
 }