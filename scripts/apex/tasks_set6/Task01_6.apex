/*1. Write an Apex code to create an empty List of Strings 
and add 3 names to it using add() method. then insert 3 more
 items at index number 1
 - print them out using both for loop or for each loop
*/

List<String> names = new List<String>();
// names.add(YourValueHere); 

names.add('Jon');
names.add('Tom');
names.add('Adam');
System.debug(names);
names.add(1,'Ela');
names.add(1,'Lora');
names.add(1,'Isac');


for(String each : names) {
    System.debug('Current value : ' + each);
}
    
 for(Integer index=0; index<names.size();index++){
    System.debug(names.get(index));
 }
