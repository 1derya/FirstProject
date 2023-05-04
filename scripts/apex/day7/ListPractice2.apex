/**

Declare a List of Integer and initialize it's value (empty)
Fill up the list with 100 items , starting with 1-->100
 */
/*  List<Integer> numberList = new List<Integer>();

for(Integer count=1 ; count<=100 ; count++){
    numberList.add(count);
}
*/
//numberList.add(1)
//numberList.add(2)
//numberList.add(3)
//numberList.add(4)
//..
//numberList.add(100)

List<Integer> numberList = new List<Integer>(); 
 
 for(Integer count=1 ; count<=100  ; count++ ){
    numberList.add(count); 
 }

System.debug(numberList) ; 
//get the size of the list using size method of the list
System.debug(numberList.size()  ) ; //100

//creat aList of Integer and store 15 items
//all item value should be 10 ;
//here is the content of the list
//10,10,10,10,10,10,10,10,10,10,10,10,10,10,10

//startPoint    //endPoint   //iteration
//for(Integer count=1 ;count<=15 ; count++)


List<Integer> voteNumbers = new List<Integer>();


for(Integer count=1 ; count<= 15 ; count ++ ){
    voteNumbers.add(10);
}

System.debug(voteNumbers);

//How to count the items inside the list
//so we get the a number
//size() method of list
Integer voteCount = voteNumbers.size() ;

System.debug(voteCount);
// Or you can directly print it out without saving
System.debug(voteNumbers.size() ) ;   // 15


    




