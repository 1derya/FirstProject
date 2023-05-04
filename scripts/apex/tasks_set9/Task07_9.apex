/**
7. Create a String with a long sentence
   - print out the word count in sentence
   - loop through each item and reverse it 
   - outside your loop , print to see the result
*/

String sentence1= 'The most necessary thing is peace in the world';
List<String> wordsOf = sentence1.split(' ');
System.debug('count of word is : ' + wordsOf.size()); 

List<String> reverseOfWords =new List<String>();
    for(String eachOne : wordsOf) {
        reverseOfWords.add(eachOne.reverse());
      
}
 System.debug('reverseOfWords value is : ' + reverseOfWords);    




System.debug('------------------');


String sentence = 'I love ice cream' ;

List <String> words = sentence.split(' ') ;

System.debug('Word count is ' + words.size()) ; 

for (String each1 : words){
    System.debug(each1.reverse()) ;
} 

System.debug( sentence.reverse() ) ; 

System.debug('------------------');

String myLongSentence = 'This is the longest sentence I can make tonight';
System.debug('the word count of myLongsentence is ' 
            + myLongSentence.length()); 

List<String> newWordList = myLongSentence.split(' ');
System.debug('the number of words in my sentence is : ' + newWordList.size()); 

List<String> reverseList = new List<String>();

for(String each2 : newWordList) {
    reverseList.add(each2.reverse()); 
}
System.debug('reversed words of my sentence : ' + reverseList);

System.debug('------------------');

String sentence2 = 'I need to loose weight before summer starts';
 List<String> splitSentence = sentence2.split(' ');
 List<String> reversed = new List<String>();
 System.debug('splitSentence value is : ' + splitSentence); 
System.debug('splitSentence.size() value is : ' + splitSentence.size()); 
for(String eachWord : splitSentence) {
 reversed.add(eachWord.reverse());
}
  System.debug('Reversed String is : ' + reversed);  

