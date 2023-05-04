/**
6. Create a String variable with value 
   - print out the length of the String 
   - print out the last character index
   - print out index of second character from the last
   - split the string by empty String to get List of all characters
   - loop through each item and get the count of 'a'
   - now read the doc and try out countMatch method
*/

String label = 'humanity';
System.debug('lenght index is : ' + label.length()); 
System.debug('last index is : ' + label.indexOf(label.right(1))); 
System.debug('last second index is : ' +(label.length()-2)); 

List<String> labelList = label.split('');
Integer count3 =0;
for(String eachLetter : labelList) {
    if(eachLetter.contains('a')){
       count3++;
    }

}
    System.debug('cotains a: ' + count3);
    System.debug('cotains a value is : ' + label.countMatches('a')); 
    



System.debug('------------------');

String state = 'California' ;
 Integer length = state.length() ;

 System.debug('the length ' + length) ; 
 System.debug('Last character index ' + state.indexOf (state.right(1) , length-1) ) ; 
 System.debug('Last character index ' + state.indexOf ( ( state.mid(length -2 , 1) ) , length -2 ) ) ; 
 System.debug('Split :' + state.split('')) ; 

 List <String> caliList = state.split('')  ; 

 Integer count = 0 ;
 for( String each : caliList) {
    if (each.contains('a')) {
        count++ ;
    }
 } 
System.debug('count of \'a\' ' + count) ; 
Integer times = state.countMatches('a') ;
System.debug('\'a\' occurs ' + times + ' times in California') ; 

System.debug('------------------');


String myString = 'This is my string for task 9-6';
System.debug('index of the last character is ' + (myString.length()-1)); 
System.debug('index of the second character from the last is ' 
            + (myString.length()-2));
System.debug('splitting the string with space : ' + myString.split(' '));
List<String> newWordList = myString.split(' ');
System.debug('wordList value is : ' + newWordList); 

Integer count1 = 0 ;
for(String each1 : newWordList) {
    if( each1.contains('a') ){
       count1++;
    }
}
System.debug('count of letter a : ' + count1);


