/**

9. Write an Apex code that create Set of 10 Integer
   - create a variable called average 
   - calculate the average  sum/item count and print it out
   - Create empty List of Integer
   - store only items above average in above Set
   - removeAll items that below average from the Set 
 */


 //Task 9
 Set <Integer> numbers = new Set <Integer> {1,2,3,4,5,6,7,8,9,10};

 Integer sum = 0;
 for (Integer each : numbers){
    sum += each;
 }
 Integer average = sum / numbers.size();
 System.debug(average); 
 
 List <Integer> emptyList = new List <Integer> ();
 for(Integer each : numbers){
    if (each > average){
        emptyList.add(each);
    }
 }
System.debug (emptyList);
 
for ( Integer each : numbers){
    if(each < average){
        numbers.remove(each);
    }
}
System.debug(numbers);

System.debug('------------------');


Set<Integer> nums = new Set<Integer>{ 45, 99, 15, 82, 11, 34, 7, 19, 9, 14 };

Decimal sum1 = 0;
for (Integer each : nums) {
  sum1 += each;
}
Decimal average1 = sum1 / nums.size();
System.debug('average value is : ' + average1);
List<Integer> aboveAverage = new List<Integer>();
for (Integer each : nums) {
  if (each > average) {
    aboveAverage.add(each);
  }
}
System.debug('aboveAverage value is : ' + aboveAverage);




/*9. Write an Apex code that create Set of 10 Integer
   - create a variable called average 
   - calculate the average  sum/item count and print it out
   - Create empty List of Integer
   - store only items above average in above Set
   - removeAll items that below average from the Set  */

Set<Integer> set1=new Set<Integer>{10,20,30,40,50,60,70,80,90,100};

Decimal avg;
Integer sum=0;

for(Integer each : set1) {
   sum+=each;
}

avg=sum/set1.size();

List<Integer> list1 = new List<Integer>();

for(Integer each : set1) {
   if(each>avg)
    list1.add(each);
}

System.debug(list1); 

//if you want to removeAll you can loop and add the numbers
//below average to an empty list, then you can 
//write set1.removeAll(newList)



/*Given  2 Integer values : 
Integer num1 = 10 ; 
Integer num2 = 20 ;

Swap the value of num1 , num2 
so num1 become 20 and num2 become 10.
HINT : you need a temp variable for temporarily storing value of one number. 
*/

// num1=num2   num1->20  num2->20
// num2=num1

Integer num1 = 10 ; 
Integer num2 = 20 ;
Integer temp =num1;

num1=num2;
num2=temp;

System.debug('num1 '+num1); 
System.debug('num2 '+num2); 