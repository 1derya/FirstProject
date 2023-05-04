/*Write an Apex code that create 1 Random double between 0 to 100
   - print it out 
   - if the number is even -> print 'even number!!!' 
   - if it can be divided by 5 with no remainder -> print 'cool number'
   - if it can be divided by 7 with remainder 3  -> print 'cooler number'  */


Double num = Math.random()*100;
System.debug(num); 

Integer var=num.intValue();

//Integer var=Math.random()*100.intValue();

if(Math.mod(var,2)==0)
   System.debug(var+' is even number');

if(Math.mod(var,5)==0)
   System.debug(var+' is cool number');

if(Math.mod(var,7)==3)
   System.debug(var+' is cooler number');


Double randomDbl = math.random()*100;
 System.debug('randomDbl value is : ' + randomDbl); 
 Integer randomInt = randomDbl.intValue();
 if(math.mod(randomInt, 2)==0){
  System.debug('Even Number'); 
 }else if( math.mod(randomInt, 5) ==0){
  System.debug('Cool number'); 
 }else if(math.mod(randomInt, 7)==0){
  System.debug('Cooler number'); 

 }


