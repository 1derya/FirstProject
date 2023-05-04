/*
5. Write a program that create List of Id 
with 10 items and use 2 different loop 
(for loop and for each loop )
to print out all value for practice 

    - continue from above
     if the any ID match exactly 
     '001xxxxxxxxxxxxxxx' 
     then break out of the loop
*/

 List<Id> idList = new List<Id> {'0058W00000CP4yzQAD','0058W00000CP4yzQAP','0058W00000CP4yzQAD','0058W00000CP4yzQAD','0058W00000CP4yzQAQ','0058W00000CP4yzQAV','0058W00000CP4yzQAX','0058W00000CP4yzQAM','0058W00000CP4yzQAO','0058W00000CP4yzQAL'};
//for each loop

 for(Id eachId : idList){
    if (eachId == '0058W00000CP4yzQAM'){
    break;
    }
    System.debug(eachId);
 }

//for loop 

 for(Integer i = 0; i < idList.size(); i++){
    if(idList.get(i) == '0058W00000CP4yzQAM' ){
        break;
    }
    System.debug(idList.get(i));
 }




















