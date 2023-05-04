/**
8. Create a String with a long sentence
   - split the sentence to get word list 
   - create a variable called longestCharCount
   - assign it's value to first item length
   - loop through each item 
      - use Math.max(longestCharCount, each.length() )
   - outside your loop , print to see the result of longestCharCount
*/
 
String sentence1= 'The most necessary thing is peace in the world';
List<String> wordsOf = sentence1.split(' ');
Integer longestCharCount = wordsOf.get(0).length();

for(String each : wordsOf) {
    longestCharCount= Math.max(longestCharCount,each.length());
}
System.debug('longestCharCount value is : ' + longestCharCount);     

System.debug('------------------');


String sentence = 'My favorite time of year is summer';
List<String> sentenceSplit = sentence.split(' ');
Integer longestCharCount1 = sentenceSplit.get(0).length();
System.debug('longestCharCount value is : ' + longestCharCount1); 
for(String each1 : sentenceSplit) {
   longestCharCount1 = Math.max(longestCharCount1, each1.length());
}
   System.debug('longestCharCount value is : ' + longestCharCount1); 