/**
2. Given a String variable message contains long string 
   - for example :  'aaabbcccccddhhhhhhzzzz'
   - Get a List<String> out of this String containing each characters 
   - Create an empty Map<String,Integer> called letterFrequencyMap
   - Loop through your list 
     - store each character as key 
     - store frequency of each character as value into the map
     - result should be {a=3, b=2, c=5, d=2, h=6, z=4}
   - Loop through this Map (using keySet of course)
     - print out the characters showed up more than twice 
     - the result should be c , h , a , z 
 */

String message = 'aaabbcccccddhhhhhhzzzz';
List<String> messageList = new List<String>(message.split(''));
System.debug(messageList);
Map<String, Integer> letterFrequencyMap = new Map<String, Integer>();
// letterFrequencyMap.put(keyGoHere, valueGoHere);
 
for(String eachLetter : messageList)

if(!letterFrequencyMap.containsKey(eachLetter)){
    letterFrequencyMap.put(eachLetter, 1);
}else {
    Integer letterCount = letterFrequencyMap.get(eachLetter);
    letterFrequencyMap.put(eachLetter, ++letterCount);
}
System.debug(letterFrequencyMap);

List<String> moreThanTwice = new List<String>();
for(String eachKey : letterFrequencyMap.keySet()){
    if(letterFrequencyMap.get(eachKey)> 2){
        moreThanTwice.add(eachKey);
    }
}
System.debug(moreThanTwice); 
/**
// task 11-2

String longString = 'aaabbcccccddhhhhhhzzzz';
List<String> oneCharacterString = new List<String>();
for (Integer i = 0; i < longString.length() - 1; i++) {
  oneCharacterString.add(longString.mid(i, 1));
}
System.debug('oneCharacterString value is : ' + oneCharacterString);

Map<String, Integer> frequencyMap = new Map<String, Integer>();
for (String eachCharacter : oneCharacterString) {
  if (!frequencyMap.containsKey(eachCharacter)) {
    frequencyMap.put(eachCharacter, 1);
  } else {
    Integer currentCount = frequencyMap.get(eachCharacter);
    frequencyMap.put(eachCharacter, ++currentCount);
  }
}
System.debug('frequencyMap value is : ' + frequencyMap);

for (String eachKey : frequencyMap.keySet()) {
  if (frequencyMap.get(eachKey) > 2) {
    System.debug('eachKey value is : ' + eachKey);
  }
}
 */