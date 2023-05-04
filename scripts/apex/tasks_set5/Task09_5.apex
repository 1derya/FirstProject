/**
9. Write a program that create a list of strings and print the 
values that are not equal to "Admin" or "Developer" using a for 
loop and the continue keyword.
*/
List<String> roles =new List<String>{'Business Analyst',
    'Product Owner',
    'QALead',
    'Admin',
    'Manager',
    'Scrum Master',
    'Developer',
    'Research Manager',
    'Team Lead',
    'Stakeholder'};

    for(Integer index=0; index<roles.size() ; index++){
        if(roles.get(index)=='Admin' || roles.get(index)=='Developer'){
            continue;
        }
        System.debug (roles.get(index));
    }

    for(String eachRole : roles){
        if(eachRole=='Admin' || eachRole=='Developer'){
            continue;
        }
        System.debug(eachRole);
    }


List<String> roleList = new List<String>();
 
 roleList.add('Developer'); 
 roleList.add('Java SDET'); 
 roleList.add('Java Developer'); 
 roleList.add('Cybersecurity Analyst'); 
 roleList.add('Data Science'); 
 roleList.add('Salesforce Developer'); 
 roleList.add('Admin');
 roleList.add('Salesforce Architect'); 
 roleList.add('Sales Manager'); 
 roleList.add('Marketing Director'); 
 roleList.add('Help Desk'); 
/*  
 for(Integer i=0; i<roleList.size() ; i++) {

    if(roleList.get(i)=='Admin' || roleList.get(i)=='Developer'  ){
        continue;

    }

    System.debug('Value at index #'+ i +' is :' + roleList.get(i) );
 }
*/
 
  for(Integer i=0; i<roleList.size() ; i++) {

    // create a variable to store each item you are looping through 
    String each = roleList.get(i) ; 

    if( each =='Admin'  ||  each=='Developer' ){
        continue ; 
    }

    System.debug('Value at index #'+ i +' is :' + each );

 }
 
 

