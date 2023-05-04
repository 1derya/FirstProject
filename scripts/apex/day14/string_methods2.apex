// method chaining 
// calling one method after another method 
// it's possible as long as the method you are calling 
// is the method available from the Data type of returned value 
String str = 'cookie';
//System.debug('str value is : ' + str); 

String result = str.toUpperCase().left(4).reverse() ;
//System.debug('result value is : ' + result); 

/**

## split(regExp)
Returns a list that contains each substring of the String that is terminated by either the regular expression regExp or the end of the String.

Returns a list that contains each substring of the String that is split by the given string , for example if you split sentence by space you get list of string containing each words 

*/
//This method is usually helpful if your data is well structured and seperated 
// by specific characters like (/, - , , ). Then we can use split method to generate a list from this String data.
//str.toUpperCase().left(4).mid(1,2)
String message = 'VA Weather is beautiful Today';
// split this sentence by space so we can get list of string that contains words 
List<String> wordList =  message.split(' '); 
//System.debug('wordList value is : ' + wordList); 
        //wordList value is : (VA, Weather, is, beautiful, Today)

// how many word does this sentence have
System.debug('how many word does this sentence have : ' + wordList.size()); 


for(String each : wordList) {

    System.debug('Current value : ' + each +' : lenght is '+ each.length());
}       
        // Current value : VA : lenght is 2
        // Current value : Weather : lenght is 7
        // Current value : is : lenght is 2
        // Current value : beautiful : lenght is 9
        //Current value : Today : lenght is 5


String name = 'Mario Cruz';
// if you split any String by empty string,
// you end up with list of each character
List<String> charList = name.split('');
System.debug('charList value is : ' + charList); 
    //charList value is : (M, a, r, i, o,  , C, r, u, z)
    //Splitting by space and splitting by no character (empty String) 
    //are different inputs and we get different returns ('') ,(' ')


//it gives list as a result. to store this result we create a 
//list.=> List <String> listName , but instead of assigning
//a new list we assign the result of message.split(' ') @Zeynep Yildiz 






