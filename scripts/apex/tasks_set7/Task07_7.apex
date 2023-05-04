/**
join(iterableObj, separator)
Joins the elements of the specified Collection, such as a List, into a single String separated by the specified separator.
 */

/**
7. Write an Apex code that create List or Array of 5 String values
   - Create a String variable called joinedText
   - Loop through all the items and append one item after another into
    joinedText variable separated by hyphen(-) and 
    last item should not have -
   - Example : Your list {'This','is','The','Way','Student'}`
     - value of joinedText 'This-is-The-Way-Student'
 */

 List<String> strList = new List<String>{'This','is','The','Way','Student'};
 String joinedText = '' ;

 //Loop through each item and concatenate each 
 //item into joinedText followed by  -
for(String each : strList) {
    //System.debug('Current value : ' + each);
    //joinedText = joinedText + each + '-' ; 
    joinedText += each + '-' ;
}
System.debug('joinedText value is : ' + joinedText);
//joinedText value is : This-is-The-Way-Student-

/**
The requirement asked to not include - after last item
loop through each item and append each item into joinedText
when you reach last item, do not append - at the end
*/

for(Integer i=0; i<strList.size() ; i++) {
    //System.debug('Value at index #'+ i +' is :' + strList.get(i) );
    // Store the current item value into a variable so we can reuse 
    String each = strList.get(i) ; 
    // when we are at the last item in the loop 
    // do not add - at the end  joinedText += each
    if(  i == strList.size()-1  ){
        joinedText += each; 
    }else{
    // when we are not at the last item in the loop 
    // add append current item value and - at the end  joinedText += each + '-' 
        joinedText += each + '-' ; 
    }

 }

 System.debug('joinedText value is : ' + joinedText); 
 /**for(Integer i=0; i < valueList.size() ;i++) {
    if(i < valueList.size()-1){
        joinedText += valueList.get(i) + '-';
    }else{
        joinedText += valueList.get(i);
    }
}
System.debug('joinedText value is : ' + joinedText); 
*/

/**
List<String> strList = new List<String>{'This','is','The','Way','Student'};
String joinedText = '' ;
for (String each : strList){
    if(each == strList.get(strList.size()-1)){
        joinedText += each;
    } else {
        joinedText += each + '-';
    }
}
System.debug(joinedText);

if(math.mod(num3,2) > 0 ){
    System.debug('Odd');
 } else {
    System.debug('Even'); 
 }

 */
List<String> strList = new List<String>{'This','is','The','Way','Student'};
String joinedText = String.join(strList , '-') ; 
System.debug('joinedText value is : ' + joinedText);





 String[] gameOfThrones = new String[]{
  'Snow',
  'Targaryen',
  'Stark',
  'Lannister',
  'Dzhamilya',
  'Pavel',
  'Mormont',
  'Tarly',
  'Tyrell',
  'Greyworm'
};

Integer index = (gameOfThrones.size()-1)/2;
String mid1 = gameOfThrones.get(index);
System.debug('mid1 value is : ' + mid1); 
String mid2 = gameOfThrones.get(index+=1);
System.debug('mid2 value is : ' + mid2);


/*7. Write an Apex code that create List or Array of 8 String values
   - store the index of 2 items in the middle into 2 variables mid1, mid2
   - now imagine you unknown (even) number of items in the list and find out a way to dynamically find the index of item in the middle 
     - if you have 8 items : number 4 and 5 items are in the middle
     - if you have 18 items : number 8 and 9 items are in the middle and so on
     - no loop needed here
   - print out the value of items in the middle */

List<String> strList = new List<String>{
    'Ercan',
    'Fatih',
    'Nora',
    'Natyra',
    'Cavidan',
    'Sean',
    'Leke',
    'Seyfullah'
};

Integer mid1=strList.size()/2;
Integer mid2=strList.size()/2-1;

System.debug('the items in the middle are '+strList[mid1]+' and '+strList[mid2]); 






