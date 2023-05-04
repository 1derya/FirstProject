/**
4. Write an Apex code that create List or Array of 10 String values
   - create a empty Set of String 
   - store all the string that is not equal to admin or developer in it
   - print out the size and items in loop 
 */

String[] roles =new String[]{'developer','sales maneger','admin','sales',
                              'supports','HR','consular','dev','admin'};
Set<String> newRoles = new Set<String>();

        //Integer i=0;
   for(String each : roles){
        if(each!= 'developer'&& each!= 'admin'){
            newRoles.add(each);

        }
        //i++;
   }
                               
System.debug('newRoles value is : ' + newRoles); 

System.debug('------------------');


String [] strList = new String [10];
 strList [0] = 'Developer';
 strList [1] = 'Admin';
 strList [2] = 'Dev';
 strList [3] = 'loper';
 strList [4] = 'Devel';
 strList [5] = 'oper';
 strList [6] = 'Develope';
 strList [7] = 'er';
 strList [8] = 'lop';
 strList [9] = 'elop';

Set <String> newSet = new Set <String> ();
for (String each : strList){
    if(each != 'Developer' && each != 'Admin') {
        newSet.add(each);
    }
}
System.debug(newSet); 

/**
String[] roles =new String[]{'developer','sales maneger','admin','sales',
                              'supports','HR','consular','dev','admin'};
Set<String> newRoles = new Set<String>();

        //Integer i=0;
   for(String each : roles){
        if(roles.get(i)!= 'developer'&& roles.get(i)!= 'admin'){
            newRoles.add(each);

        }
        //i++;
   }
                               
System.debug('newRoles value is : ' + newRoles); 


 */



 /*4. Write an Apex code that create List or Array of 10 String values
   - create a empty Set of String 
   - store all the string that is not equal to admin or developer in it
   - print out the size and items in loop  */

List<String> strList = new List<String>{
  'Admin',
  'Architect',
  'Tester',
  'QA',
  'Analyst',
  'Developer',
  'App Builder',
  'PO',
  'Scrum Master',
  'Consultant'
};

Set<String> strSet =new Set<String>();

for(String each : strList) {
  if(each!='Admin'&& each!='Developer')
strSet.add(each);
}

System.debug('size of the set: '+ strSet.size());

for(String each : strSet) {
  System.debug(each);
}



