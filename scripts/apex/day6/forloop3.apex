/**

count from 1-10
using for loop print the count multipled by 5
 */

  Integer num1 = 5 ; 
 Integer count = 1 ; 
for(Integer count= 1 ; count<=10; count++){
    system.debug(count * 5);
}

/**
Continue from above code, 
Above code works great if you just want to get the multiplication table of 5 , we want to be able to provide any number not just 5 and generate multiplication table of any numbers 
 */


 // first number you get from variable count 
 // second number you get from variable num 
 // result you get by multiplying 2 numbers 
 // eventually generate this output 
 //  in below format 
 //  // 1 X 5 = 5 
 //System.debug(count + 'X' + num +' = ' + (count*num));{

// }
Integer num = 2 ; 

for( Integer count=1 ; count<=10 ; count++){
    System.debug(count + ' X ' + num + ' = ' + ( count*num )  ); 
}
/**
Give anumber , print out below

luckyNumber+1 = the result
luckyNumber +2 = the result
luckyNumber +3 = the result
..
luckyNumber +10 = the result
 */
//Integer luckyNumber = 7 ;
/* for(Integer i=1 ; i<10 ; i++){
    //luckyNumber + i = the result
    system.debug(i)
} */

/**
Give a number , print out below 

luckyNumber + 1 = the result
luckyNumber + 2 = the result
luckyNumber + 3 = the result
..
luckyNumber + 10= the result
 */

Integer luckyNumber = 7 ; 
/**
7 + 1 = 8 
7 + 2 = 9 
7 + 3 = 10 
7 + 4 = 11 
7 + 5 = 12 
.....
7 + 10 = 17
 */
for(Integer count=1 ; count<=10 ; count ++){
  // 7 + 1 = 8 
  System.debug( luckyNumber +  ' + ' 
                +  count + ' = ' 
                + (luckyNumber+count)   ) ; 
}



 



