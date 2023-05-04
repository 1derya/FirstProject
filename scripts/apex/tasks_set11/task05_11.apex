/**

5. Create a Map<Integer, String> and fill it up with 5 key-value pairs
   -  Get the sum of All the Keys 
   -  Join all the values by , and print it out 
 */
Map<Integer,String> nums = new Map<Integer,String>{
    15 => 'Blue',
    20 => 'Red',
    25 => 'Black',
    30 => 'Yellow',
    35 => 'Pink'
};
Integer keySum = 0;
for (Integer eachKey : nums.keySet()){
    keySum += eachKey;
}
System.debug('keySum value is : ' + keySum); 
String colors = '';
for(String eachColor : nums.values()){
    colors += eachColor;
}

System.debug('colors value is : ' + colors); 
 
List<String> valueList = nums.values();
System.debug(String.join(valueList,','));


 //System.debug(' value is : ' + joinedColors); 
System.debug('------------------');

Map<Integer, String> myMap = new Map<Integer, String>();
myMap.put(1, 'a');
myMap.put(12, 'ab');
myMap.put(123, 'abc');
myMap.put(1234, 'abcd');
myMap.put(12345, 'abcde');

Set<Integer> keysOfMyMap = myMap.keySet();
System.debug('keysOfMyMap value is : ' + keysOfMyMap);
List<Integer> keysOfMyMapList = new List<Integer>();
keysOfMyMapList.addAll(keysOfMyMap);

Integer sumOfTheKeys = 0;
for (Integer i = 0; i <= keysOfMyMapList.size() - 1; i++) {
  sumOfTheKeys += keysOfMyMapList.get(i);
}
System.debug('sumOfTheKeys value is : ' + sumOfTheKeys);

String joinedKeys = String.join(keysOfMyMapList, ' , ');
System.debug('joinedKeys value is : ' + joinedKeys);