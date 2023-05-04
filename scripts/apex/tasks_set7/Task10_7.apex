/**
10. Write an Apex code that create List of 10 Integer values as scoreList
    - get the count of numbers less than 0 or greater than 100
    - in separate loop, update the value of items as below
      - if the Integer less than 0 update it to 0 
      - if the Integer more than 100 update it to 100
    - HINT : Array syntax is much simpler when it comes to update
 */

//Task10
 List <Integer> scoreLIst1 = new List <Integer> {100,250,80,75,110,-50,85,-10,100,0};
 Integer count = 0;
 for( Integer each : scoreLIst1 ){
    if(each < 0 || each > 100){
        count++;
    }
 }
 System.debug(count); 

   for(Integer i = 0 ; i < scoreLIst1.size() ; i++ ){
    if (scoreLIst1[i] < 0 ){
        scoreLIst1.set(i,0);
    } if (scoreLIst1[i] > 100 ) {
        scoreLIst1.set(i,100);
    }
 }
 System.debug(scoreLIst1);


System.debug('------------------');


List<Integer> scoreList = new List<Integer>{
  -16,
  5,
  1,
  -3,
  122,
  76,
  250,
  50,
  7,
  99
};
Integer sumOfScores = 0;
for (Integer each : scoreList) {
  if (each < 0 || each > 100) {
    sumOfScores += each;
  }
}
System.debug('sumOdScores value is : ' + sumOfScores);

Integer i = 0;
for (Integer each : scoreList) {
  if (each < 0) {
    scoreList.set(i,0);
    i++;
  }else if(each > 100){
    scoreList.set(i,100);
    i++;
  }else{
    i++;
  }
}
System.debug('Score List changed with 0 and 100: ' + scoreList);




//Bonus Task
Integer num1 = 10;
Integer num2 = 20;
Integer num1Temp = num1;
num1 = num2;
num2 = num1Temp;
System.debug('num1 value is : ' + num1); 
System.debug('num2 value is : ' + num2); 

/**
// task 7-10

List<Integer> numberList = new List<Integer>{71,249,-13,13,178,59,54,158,76,-33};

Integer count = 0 ;
for(Integer each : numberList) {
    if( each < 0 || each > 100 ){
        count++ ; 
    }
}
System.debug('Count of the numbers less than 0 or greater than 100 : ' + count);   

Integer index = 0 ;
for(Integer each : numberList) {
   if( each < 0 ){
    numberList.set(index, 0);
    index++;
   }else if( each > 100){
    numberList.set(index, 100);
    index++ ;
   }else {
    index++ ;
   }
}
System.debug('Updated value of the scores list : ' + numberList);


 */


 /*10. Write an Apex code that create List of 10 Integer values as scoreList
    - get the count of numbers less than 0 or greater than 100
    - in separate loop, update the value of items as below
      - if the Integer less than 0 update it to 0 
      - if the Integer more than 100 update it to 100
    - HINT : Array syntax is much simpler when it comes to update */


List<Integer> scoreList =new List<Integer>{-100,-50,-20,0,5,68,90,100,200,450};

Integer count=0;

for(Integer each : scoreList) {
  if(each<0||each>100)
  count++;
}
  System.debug(count); 


for(Integer i=0; i<scoreList.size() ;i++) {
  if(scoreList[i]<0)
    scoreList[i]=0;
  if(scoreList[i]>100)
    scoreList[i]=100;

}
System.debug(scoreList); 




