/*
6. Write a program that create List of 
Integer with 10 items 
get the count of the items more than 5 
(try for loop and for each loop)
and print out at the end 
*/
List<Integer> numbers = new List<Integer> {1, 2, 13 ,4 , 25 , 6 , 7 , 18 , 9 , 20};

 Integer count=0 ;
//For loop
 for(Integer i=0; i< numbers.size(); i++){
    if (numbers.get(i) > 5){
        count++;
    } 
 } 
 System.debug (count);

//for each
for(Integer eachNum : numbers){
    if (eachNum > 5){
        count++;
    }
}
System.debug (count);