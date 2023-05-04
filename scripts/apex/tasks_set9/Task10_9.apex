/**

10. Create a List of 5 String values 
   - create a Boolean variable called isAllPalindrome and set to true
   - loop through each item in the list 
      - check if the word is palindrome or not 
      - if it's not, set isAllPalindrome to false
      - else take no action (so no else)
*/

String family = 'Dad';
Boolean isAllPalindrome1 = family.equals(family.reverse());
System.debug('isAllPalindrome1 value is : ' + isAllPalindrome1);

System.debug('------------------');

List<String> palindromes = new List<String>{ 'mom', 'Kek', 'nine', 'hannah', 'deified' };
Boolean isAllPalindrome = true;
List<String> myLIst = new List<String>();

for(String each : palindromes) {
    if(each !=each.reverse()){
        isAllPalindrome = false;
    }else{
        myLIst.add(each);
    }
}
System.debug(isAllPalindrome);    
System.debug('myLIst value is : ' + myLIst); 

