/**
6. Write a program that create a Map<String, Integer>  with 9 values
   - Create a new map that contains only the keys and values where the 
   value is greater than 10 from first Map.
 */
Map<String, Integer> abcMap = new Map<String, Integer>();
abcMap.put('A', 1);
abcMap.put('B', 3);
abcMap.put('C', 5);
abcMap.put('D', 7);
abcMap.put('E', 9);
abcMap.put('F', 11);
abcMap.put('G', 13);
abcMap.put('H', 15);
abcMap.put('I', 17);
Map<String, Integer> newabcMap = new Map<String, Integer>();

for(String eachKey : abcMap.keySet()){
    if (abcMap.get(eachKey)>10){
        newabcMap.put(eachKey,abcMap.get(eachKey));
    }
}
System.debug('newabcMap value is : ' + newabcMap); 
System.debug('------------------');

 Map<String, Integer> myMap = new Map<String, Integer>();
myMap.put('abcdefghi', 1);
myMap.put('abcdefgh', 12);
myMap.put('abcdefg', 123);
myMap.put('abcdef', 1234);
myMap.put('abcde', 12345);
myMap.put('abcd', 123456);
myMap.put('abc', 1234567);
myMap.put('ab', 12345678);
myMap.put('a', 123456789);

Map<String, Integer> mySecondMap = new Map<String, Integer>();

Set<String> keysOfMyMap = myMap.keySet();
List<String> keysOfMyMapList = new List<String>();
keysOfMyMapList.addAll(keysOfMyMap);
System.debug('keysOfMyMapList value is : ' + keysOfMyMapList);

List<Integer> valuesOfMyMap = myMap.values();
System.debug('valuesOfMyMap value is : ' + valuesOfMyMap);

for (Integer i = 0; i <= keysOfMyMapList.size() - 1; i++) {
  if (valuesOfMyMap.get(i) > 10) {
    mySecondMap.put(keysOfMyMapList.get(i), valuesOfMyMap.get(i));
  }
}
System.debug('mySecondMap value is : ' + mySecondMap);

System.debug('------------------');

Map<String, Integer> letterMap = new Map<String, Integer>();
letterMap.put('A', 1);
letterMap.put('B', 3);
letterMap.put('C', 5);
letterMap.put('D', 7);
letterMap.put('E', 9);
letterMap.put('F', 11);
letterMap.put('G', 13);
letterMap.put('H', 15);
letterMap.put('I', 17);

Map<String, Integer> bigValueMap = new Map<String, Integer>();
Set<String> allKeys = letterMap.keySet();
for(String eachKey : allKeys) {
   if (letterMap.get(eachKey) > 10) {
    bigValueMap.put(eachKey, letterMap.get(eachKey));
  } 
}
System.debug(bigValueMap); 



