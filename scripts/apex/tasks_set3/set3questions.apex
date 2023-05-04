//Task 1
//1. Write an Apex code to print all the odd numbers from 1 to 100 using for loop.

/* 
for(Integer count=1; count < 100; count+=2){
    System.debug(count);
} */
//Integer count=1;
//while(count<=97){
 //   count+=2;
//System.debug(count);
//}


//Task 2
//2. Create an Integer variable with name upperLimit to control where to stop and initialize it's value to 50. 
//Create a for loop to count from 1 to the upperLimit , try different upperLimit and run again

/* for(Integer upperLimit=1; upperlimit<=50; upperlimit++){
 System.debug(upperLimit);   
} */

//Task 3
//3. Create an Integer variable called startingNumber
//Create a loop to countdown from starting number till 0. 

/* for(Integer startingNumber =20;startingNumber >=0; startingNumber--){
        System.debug(startingNumber);
} */
 //Task 4
//4. Create two Integer as startingNumber and endingNumber
//initialize their value (startingNumber should be 
//less than endingNumber in this case).
//use for loop to count up by one starting 
//from startingNumber and end at endingNumber
//Integer startingNumber=5;
//Integer endingNumber=0;
//for( Integer num=startingNumber; num<=endingNumber; num++){
  //  System.debug(num);
//}
//Task6
/*  6. use for loop to count from 20 to 60 
increasing by 2 each time. 
Print out  20, 22, 24.....40 yay we finished 
half 42 44 46....60
 (Print out 'Yay we have finished half'
  when the count is exactly 40 as above)
*/

for(Integer count =20;count<=60;count+=2){
    if(count<40 ){
    System.debug(count);
}else if(count==40){
    System.debug('Yay we have finished half');
}else
    System.debug(count);
}

//Task7
/* 7. Create a loop that print as below 
Sample Lead 1
Sample Lead 2
...
Sample Lead 10
 */
 for(Integer lead =1;lead<=10;lead++){
    System.debug('Sample'+' lead '+ lead);
    
 }

 //Task8
 /* Create a Loop that print as below to generate sample first name last name 
TestFirst1  ,  TestLast1
TestFirst2  ,  TestLast2
TestFirst3  ,  TestLast3
TestFirst4  ,  TestLast4
*/
/*String firstName='Derya';
String lastName='Durak';
for(Integer num=1;num<5;num++){
    System.debug(firstName+num+' , '+lastName+num);
}*/
//Task9

/* 9. Similar to above task 
now create two String variables to store firstName and lastName
using loop generate sample lead email in below format
firstNameValue+lastNameValue_1@force.com
firstNameValue+lastNameValue_2@force.com
firstNameValue+lastNameValue_3@force.com
firstNameValue+lastNameValue_4@force.com
firstNameValue+lastNameValue_5@force.com

Remember to actually replace the value with variable value like 
jonsnow_1@force.com */
/*
String firstName='Derya';
String lastName='Durak';
for(Integer num=1;num<=5;num++){
    System.debug(firstName+'+'+lastName+'_'+num+'@force.com');
}
*/
//Task10
/* 10. Now combine them all to print them together : 
Declare and initialize 2 String variables called firstName and lastName
Declare an Integer leadCount and initialize it's value. 

Create a for loop to print as below

For example : 
assuming 
String firstName = 'jon' , lastName = 'snow' ; 
Integer leadCount = 4 ; 

the program should output below 
The lead 1 name is jon snow1
email is jon_snow1@force.com

The lead 2 name is jon snow2
email is jon_snow2@force.com

The lead 3 name is jon snow3
email is jon_snow3@force.com

The lead 4 name is jon snow4
email is jon_snow4@force.com */
//Task10
String firstName='Derya';
String lastName='Durak';
for(Integer lead=1;lead<=4;lead++){
    System.debug('The lead ' + lead+ ' name is '+ firstName +' '+ lastName+lead);
    System.debug('email is ' + firstName+'_'+lastName+lead+'@force.com');
    System.debug('                                                    ');
}

