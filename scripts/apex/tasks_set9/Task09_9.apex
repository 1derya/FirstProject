/**
9. Create a String variable with the value 
   - check if the value is palindrome or not 
   - palindrome read the same from forward or backward 
   - for example anna , hanna , racecar, mom
   - do case-sensitive check!
*/
String name = 'Nalan';

String reversedName = name.reverse();
if(name.contains(reversedName)){
    System.debug( 'palindrome'); 
}else{
    System.debug('not palindrome'); 
}

if(name== name.reverse()){
    System.debug('palindrome'); 
}


System.debug('------------------');

String streetName = 'kayak';
 String reversedStreetName = streetName.reverse();
 if( streetName == reversedStreetName){ // when you use == it is Not case sensitive
  System.debug('It is Palindrome'); 
 }
 if( streetName.contains(reversedStreetName)){ // in this example contains method is case sensitive
  System.debug('It is Palindrome'); 
 }

