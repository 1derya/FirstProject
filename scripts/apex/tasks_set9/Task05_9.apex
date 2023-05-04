/**
5. Create a string variable containing an email address, 
   - for example jonsnow@nightwatch.com
   - store the index of the '@' character in the email address.
   - print out the part before '@' in uppercase
   - print out whatever is after '@' 
   - print out last 3 characters
*/


String email1 ='deryadurak@apex.com';
Integer index1 =email1.indexOf('@');
System.debug('index1 value is : ' + index1);   
System.debug('before ' + email1.left(index1).toUpperCase()); 
System.debug(' after : ' + email1.mid(index1+1,email1.length()-index1)); 

System.debug('------------------');

 String email = 'jonsnow@nightwatch.com';
 Integer index = email.indexOf('@');
 System.debug(index);  
 System.debug(email.left(index).toUpperCase()); 
 System.debug(email.mid (index + 1 , 14 ));
 System.debug('last three characters: ' + email.right(3) ); 

System.debug('------------------');

//with substringAfter
String email2 = 'president@whitehouse.com';
 Integer index2 = (email2.indexOf('@'));
 System.debug('Index of @' + index2);
 System.debug('Part of String before @: ' + email2.left(index2).toUpperCase() );
 System.debug('Part of String after @ : ' + email2.substringAfter('@'));

System.debug('------------------');

String emailAddress = 'jonsnow1@nightwatch.com';
Integer index3 = emailAddress.indexOf('@');
System.debug('index Of @  is : ' + index3); 
System.debug('the part before @ in uppercase is ' 
            + emailAddress.left(index3).toUpperCase()); 
System.debug('whatever after @ is ' 
            + emailAddress.right(emailAddress.length()-index3-1)); 

