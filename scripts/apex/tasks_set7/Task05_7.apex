/**
5. Write an Apex code that create List or Array of 5 Integer values. 
   - double the value of each item 
   - for example {1,4,6,4,6} => {2,8,12,8,12}
 */
Integer[] num=new Integer[]{6,12,5,9,4};
    for(Integer each : num) {
        each*=2;  
    System.debug('Current value : ' + each);
    }

System.debug('------------------');

Integer [] numbers = new Integer [5];
 numbers [0] = 2;
 numbers [1] = 4;
 numbers [2] = 5;
 numbers [3] = 10;
 numbers [4] = 6;

for(Integer i = 0; i < numbers.size() ; i++){
    numbers[i] = numbers.get(i) * 2;
}
System.debug(numbers); 

*5. Write an Apex code that create List or Array of 5 Integer values. 
   - double the value of each item 
   - for example {1,4,6,4,6} => {2,8,12,8,12} */

List<Integer> list1=new List<Integer>{1,4,6,4,6};

//we can not use for each loop if we want to modify the values
// for(Integer each : list1) {
//    each*=2;
// }

// System.debug(list1); 

for(Integer i=0; i<list1.size() ;i++) {
   list1[i]*=2; 
}

System.debug(list1); 


