/**
1. Create a variable contains your full name
   - print it out in uppercase
   - print it out in lowercase
   - find the index of space and print
   - print first char of first and last name together :initials
*/


String name = 'Marina Lugova';
System.debug('Name value is : ' + name.toUpperCase());
System.debug('name.toL value is : ' + name.toLowerCase());
System.debug('name.indexOfIgnoreCase value is : ' + name.indexOf(' '));
Integer index3 = Name.indexOf(' ') + 1;
String letter3 = Name.left(1);
String letter4 = name.substring(index3, index3 + 1);
System.debug(letter3 + ' ' + letter4);





String fullName = 'Amelia Bedelia';
 System.debug('fullName.toUpperCase() value is : ' + fullName.toUpperCase()); 
 System.debug('fullName.toLowerCase() value is : ' + fullName.toLowerCase()); 
 List<String> firtsLastName = fullName.split(' ');
 System.debug('fullName  value is : ' + firtsLastName ); 
 for(String each:firtsLastName){
    System.debug('Current name is : ' + each.left(1)); 
 }

String nameLst ='Derya Durak';
System.debug('nameLst.toUppercase() value is : ' + nameLst.toUppercase()); 
System.debug('nameLst.toLowercase() value is : ' + nameLst.toLowercase()); 
     
/*List<String> name1 = nameLst.split(' ');
for(String each : name1){
    System.debug('myVar value is : ' + each.left(1)); 
}
*/
System.debug('nameLst.indexOf(\' \') value is : ' + nameLst.indexOf(' ')); 
System.debug('first letters are : ' +nameLst.left((nameLst.indexOf(' '))+2).right(1));

String myFullName = 'Sena Ayazada';
System.debug('My full name in uppercase is ' + myFullName.toUpperCase()); 
System.debug('My full name in lowercase is ' + myFullName.toLowerCase()); 
System.debug('The index of the space in my full name is ' 
            + myFullName.indexOf(' ')); 
Integer index = myFullName.indexOf(' ');
System.debug('My initials is ' + myFullName.left(1) + myFullName.left(index+2).right(1));  


