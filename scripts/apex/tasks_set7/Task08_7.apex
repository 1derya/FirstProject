/**
Refer Day 12 Code Extras at the end for this
8.  Write an Apex code that create 2 Set of Integer with 5 values
   -  check if all items in set 2 exists in set 1
   -  check if all items in set 1 exists in set 2
      -  HINT : containsAll method
   -  add all items in the set 1 into set 2
   -  check if all items in set 2 exists in set 1
   -  check if all items in set 1 exists in set 2
   -  remove all items exists in set 2 from set 1
      -  HINT : removeAll method

8.  Write an Apex code that create 2 Set of String with 5 values
   - update set1 to only retain the elements exists in both set1 and set2
      -  HINT : retainAll method
 */

//Task 8.1
 String [] saladList = new String [7];
 saladList [0] = 'tomato';
 saladList [1] = 'avocado';
 saladList [2] = 'olive';
 saladList [3] = 'onion';
 saladList [4] = 'cheese';
 saladList [5] = 'oregano';
 saladList [6] = 'kale';

Integer mid1 = 0;
mid1 = saladList.indexOf('onion');
System.debug('The value of item under index ' + mid1 +' is ' + saladList.get(mid1) ); 

//Task 8.2
 Set <Integer> codesList1 = new Set <Integer> {1,2,3,4,5};
 Set <Integer> codesList2 = new Set <Integer> {1,2,3,41,5};

Boolean result = codesList1.containsAll(codesList2);
System.debug(result);

Boolean result2 = codesList2.containsAll(codesList1);

System.debug(result2); 

codesList1.removeAll(codesList2);

System.debug(codesList1); 
 
System.debug('------------------');


 Set<Integer> set1 = new Set<Integer>{ 34, 12, 66, 90, 1 };
Set<Integer> set2 = new Set<Integer>{ 77, 88, 66, 55, 11 };
Boolean set1ContainsSet2 = set1.containsAll(set2);
System.debug('set1ContainsSet2 value is : ' + set1ContainsSet2);
Boolean set2ContainsSet1 = set2.containsAll(set1);
System.debug('set2ContainsSet1 value is : ' + set2ContainsSet1);

set2.addAll(set1);
System.debug('Set2 value is : ' + set2); 
System.debug(set2.containsAll(set1));
set1.addAll(set2);
System.debug('Set1 value is : ' + set1); 
System.debug(set1.containsAll(set1));

set2.removeAll(set1);
System.debug('set2 value is : ' + set2); 


Set<Integer> set1 = new Set<Integer>{ 34, 12, 66, 90, 1 };
Set<Integer> set2 = new Set<Integer>{ 77, 88, 66, 55, 11 };
set1.retainAll(set2);
System.debug('set1 value is : ' + set1); 

//BonusTask
Integer num1 = 10 ; 
Integer num2 = 20 ;
num1 = num1+num2;//num1=30
num2 = num1-num2; //num2=10
num1 = num1-num2; 
System.debug('num1 value is : ' + num1); 



/*8.  Write an Apex code that create 2 Set of String with 5 values
   - update set1 to only retain the elements exists in both set1 and set2
      -  HINT : retainAll method */

Set<String> set1=new Set<String>{'chair','table','apple','scrabble','towel'};
Set<String> set2=new Set<String>{'chair','table','orange','season','month'};

Boolean isChanged=set1.retainAll(set2);

System.debug(isChanged); 

System.debug(set1); 