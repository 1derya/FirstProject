/**
10. Create a Array of 10 Integers 
  - print 'ideal numbers' if it contains both 10 and 5 
  - print 'Good numbers' if it contains 10 
  - print 'Ok numbers' if it contains 5
  - print 'Not so Good numbers' if it does not contain 10 and 5 

 */

 Integer[] numbers = new Integer[10];
numbers[0] = 2;
numbers[1] = 12;
numbers[2] = 22;
numbers[3] = 13;
numbers[4] = 7;
numbers[5] = 6;
numbers[6] = 18;
numbers[7] = 15;
numbers[8] = 8;
numbers[9] = 10;
for(Integer each : numbers) {
    
    
if (numbers.contains(5) && numbers.contains(10)) {
  System.debug('Ideal numbers');
} else if (numbers.contains(10)) {
  System.debug('Good numbers');
} else if (numbers.contains(5)) {
  System.debug('Ok numbers');
} else {
  System.debug('Not so Good numbers');
}
}
System.debug('------------------');


Integer[] numbers1 = new List<Integer>{ 66, 10, 70, 13, 99, 10, 20, 76, 15 };
for (Integer each : numbers1) {
  if (numbers1.contains(10) && numbers1.contains(5)) {
    System.debug('Ideal number');
  } else if (numbers1.contains(10)) {
    System.debug('Good numbers');
  } else if (numbers1.contains(5)) {
    System.debug('Ok numbers');
  } else {
    System.debug('Not so good numbers');
  }
}

System.debug('------------------');


Integer[] arrayOfIntegers = new Integer[10];
arrayOfIntegers[0] = 3;
arrayOfIntegers[1] = 6;
arrayOfIntegers[2] = 9;
arrayOfIntegers[3] = 12;
arrayOfIntegers[4] = 10;
arrayOfIntegers[5] = 78;
arrayOfIntegers[6] = 3;
arrayOfIntegers[7] = 44;
arrayOfIntegers[8] = 23;
arrayOfIntegers[9] = 5;
for(Integer each : arrayOfIntegers) {
   

    
if (arrayOfIntegers.contains(5) && arrayOfIntegers.contains(10)) {
  System.debug('Ideal Numbers');
} else if (arrayOfIntegers.contains(10)) {
  System.debug('Good numbers');
} else if (arrayOfIntegers.contains(5)) {
  System.debug('OK numbers');
} else {
  System.debug('Not so good numbers');
}
}
System.debug('------------------');

Integer[] nums = new List<Integer>{5,10,20,30,27,94,10,5,38,3};

if (nums.contains(5) && nums.contains(10)) {
  System.debug('Ideal numbers');
} else if (nums.contains(10)) {
  System.debug('Good numbers');
} else if (nums.contains(5)) {
  System.debug('Ok numbers');
} else {
  System.debug('Not so Good numbers');
}