/**
2. Create a String variable called message that contains a sentence with mixed case. 
for example : 'APEX mAde iT Easy to wOrk With SAlesforce DAtabase'
   - split to get List of String 
   - use for loop to go though each items
      - make each item TitleCase (lookup capitalize method from String class)
      - make sure to assign it back to yourList[i] so it actually update
   - outside your loop , print out to see latest change
   - join the list items with space 
      => re-assign back to the String variable message
      => expect 'Apex Made It Easy To Work With Salesforce Database'
 */

String message = 'APEX mAde iT Easy to wOrk With SAlesforce DAtabase';
List<String> messageList = message.split(' ');
System.debug('messageList value is : ' + messageList);
for(Integer i=0; i<messageList.size()-1 ;i++) {
   String eachWord = messageList.get(i);
  messageList.set(i, eachWord.capitalize());
}
   
System.debug('messageList value is : ' + messageList); 
String joinedMessage = String.join(messageList, ' ');
System.debug('joinedMessage value is : ' + joinedMessage); 
