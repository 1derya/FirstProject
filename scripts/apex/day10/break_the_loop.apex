/**
You can exit any type of loop early 
using the keyword  break when needed 
*/

// creat a list of Integer with some items in it

List<Integer> numList = new List<Integer>{ 7, 12, 15, 10, 17, 100, 4 };

//loop through each and every item, when you find 10 , stop looping
/*
for(Integer eachNum : numList){

   
    if( eachNum==10){
        System.debug('YAY');
        //in order to break the loop to stop looking
        //you can use break statement
        break ;
    }
 } System.debug(eachNum); //10 can not show, code run top to bottom
 */

for (Integer eachNum : numList) {
  System.debug(eachNum);
  if (eachNum == 10) {
    System.debug('YAY');
    //in order to break the loop to stop looking
    //you can use break statement
    break;
  }
}
