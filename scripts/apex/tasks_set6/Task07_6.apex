/**
7. Create an Array of 10 Doubles 
 - use Array syntax to loop through each item 
 - get the count of the number is between 10 and 20 or 40-50 
 - get the sum of the numbers greater than 30

 */

//Task7
Double[] doubleArr = new Double[10];
 DoubleArr[0] = 42.22; 
 DoubleArr[1] = 18.55; 
 DoubleArr[2] = 3.22; 
 DoubleArr[3] = 12.50; 
 DoubleArr[4] = 40.32; 
 DoubleArr[5] = 2.22; 
 DoubleArr[6] = 14.12; 
 DoubleArr[7] = 42.03; 
 DoubleArr[8] = 2.23; 
 DoubleArr[9] = 12.24;


 Integer count = 0;
 for( Double each : doubleArr){
    if((each > 10 && each < 20) || (each > 40 && each <50)) {
    count++;
    }
 } 
 System.debug(count); 

 Double sum = 0;
 for( Double each : doubleArr){
    if (each>30){
        sum+=each;
    }
 }
 System.debug(sum); 


Double[] nums = new Double[10];
nums[0] = 56.99;
nums[1] = 12.13;
nums[2] = 22.17;
nums[3] = 33.9;
nums[4] = 47.87;
nums[5] = 99.15;
nums[6] = 5.72;
nums[7] = 9.88;
nums[8] = 54.99;
nums[9] = 3.65;
Integer count1 = 0;
Double sumOfNums = 0;
for (Decimal each : nums) {
  if (each > 10 && each < 20 || each > 40 && each < 50) {
    count1++;
  }
}
for(Double each : nums) {
    if(each>30){
        sumOfNums+=each;
    }

}
System.debug('Count of numbers between 10 and 20 or 40 and 50 is : ' + count); 
System.debug('Sum of numbers more than 30 is : ' + sumOfNums); 


