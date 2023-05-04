/*
7. Write a program that create List of Integer 
   with 10 items 
    get the count of the items more than 5 and 
    break out of the loop if you 
    found 2 numbers that are more than 5
*/ 
//wrong   
List<Integer> numbers = new List<Integer>{ 1, 5, 13, 4, 25, 6, 7, 18, 2, 20 };

Integer count1 = 0;

for (Integer i = 0; i < numbers.size(); i++) {
  if (numbers.get(i) == 2) {
    break;
  } else if (numbers.get(i) > 5) {
    count1++;
  }
}

System.debug(count1);
//true
List<Integer> numberList = new List<Integer>{1,4,6,21,95,17,3,8,4,46};

Integer count = 0 ;

for(Integer each : numberList) {
    //System.debug('Current value : ' + each);

    if( each>5){
      count++;
    }
    if(count==2){
      break;
    }
}
System.debug('count value is ' + count);
