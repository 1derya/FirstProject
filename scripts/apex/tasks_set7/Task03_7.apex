/**
3. Write an Apex code that create List or Array of 10 Integer values. 
   - create another List or Array and
   - store the items in reverse order
   - print it out 
 */

 Integer[] score = new List<Integer>{10,20,30,40,29,33,11,34,89,80};

List<Integer> reverseList = new List<Integer>();
     Integer count = 0;
    for( Integer i= score.size()-1; i>=0 ; i-- ){
            reverseList.add(score[i]);
        count++;
    }
    System.debug(reverseList);

System.debug('------------------');

  List <Integer> countList = new List <Integer> {1,2,3,4,5,6,7,8,9,10};
 for(Integer i = 9; i >= 0 ; i-- ){
    System.debug(countList.get(i)); 
 }

System.debug('------------------');


 Integer[] numbers = new Integer[]{29,13,77,62,91,31,62,25,77,10};
Integer[] reverseNumbers = new Integer[10];

Integer j = 0;
for(integer i=9; i>=0; i--) {
    reverseNumbers[j]=numbers[i];
    j++;
} 

 System.debug('reverse Number List value is : ' + reverseNumbers);



 *3. Write an Apex code that create List or Array of 10 Integer values. 
   - create another List or Array and
   - store the items in reverse order
   - print it out */ 

   List<Integer>list1=new List<Integer>{5,87,45,67,93,65,90,9,26};
   List<Integer> reverse = new List<Integer>();

   for(Integer i=list1.size()-1; i>=0 ;i--) {
      reverse.add(list1[i]);
   }

   System.debug(reverse);