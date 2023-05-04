/*4. Write an Apex code that create 2 Random Integer variables 
   - use Math.random()*100 to assign random values to both of them
     - (make sure to convert the double value to Integer)
   - print both variable values 
   - print the larger number value*/

Integer var1 = (Math.random()*100).intValue();
Integer var2 = (Math.random()*100).intValue();

System.debug(var1); 
System.debug(var2);
System.debug(Math.max(var1, var2)); 

System.debug('------------------');

Double randomDbl1 = Math.random() * 100;
Double randomDbl2 = Math.random() * 100;
System.debug('randomDbl1 value is : ' + randomDbl1.intValue()); 
System.debug('randomDbl2 value is : ' + randomDbl2.intValue()); 

if( randomDbl1 > randomDbl2 ){
    System.debug('Bigger value is : ' + randomDbl1.intValue()); 
}else if(randomDbl2 > randomDbl1){
    System.debug('Bigger value is : ' + randomDbl2.intValue()); 
}else{
    System.debug('They are equal'); 
}

