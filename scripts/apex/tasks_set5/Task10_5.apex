/**
10. Write a program that create a list of strings 
with 10 values and get the count of the items that 
are not equal to "Admin" or "Developer" 
using a for loop and the continue keyword.
*/
/*
 List<String> roles =    new List<String>{'Business Analyst',
                                       'Product Owner',
                                       'QALead',
                                       'Admin',
                                       'Manager',
                                       'Scrum Master',
                                       'Developer',
                                       'Research Manager',
                                       'Team Lead',
                                       'Stakeholder'
}
*/




List<String> trailheadList = new List<String> {'Trail', 'Module', 'Salesforce', 'Admin' , 'App' , 'Lead' , 
'Object' , 'User' , 'Developer', 'Account'};


Integer count = 0;

for( Integer i = 0; i < trailheadList.size(); i++){
    if(trailheadList.get(i) == 'Admin' || trailheadList.get(i) == 'Developer'){
    continue;
    }
    count++;
}
System.debug(count);
//2nd solution
for (String eachMember : trailheadList) {
  if (eachMember == 'Admin' || eachMember == 'Developer') {
     continue;
    }
    count++;
}
  System.debug('Count of non Admins and non Developers is: ' + count);

 List<String> roleList = new List<String>();
 roleList.add('Java SDET'); 
 roleList.add('Java Developer'); 
 roleList.add('Cybersecurity Analyst'); 
 roleList.add('Developer'); 
 roleList.add('Data Science'); 
 roleList.add('Salesforce Developer'); 
 roleList.add('Admin'); 
 roleList.add('Salesforce Architect'); 
 roleList.add('Sales Manager'); 
 roleList.add('Marketing Director');

  Integer count = 0 ;

//  for(Integer i=0; i<roleList.size() ; i++) {
//     //System.debug('Value at index #'+ i +' is :' + roleList.get(i) );
//     String each = roleList.get(i) ; 
//     if(each=='Admin' || each == 'Developer'){
//         continue ; // skip the rest of the code and go to next iteration
//     }
//     count++; 
//  }
 
 for(Integer i=0; i<roleList.size() ; i++) {
    //System.debug('Value at index #'+ i +' is :' + roleList.get(i) );
    String each = roleList.get(i) ;  //Admin

    if(each!='Admin' && each !='Developer'){
      count++; 
    }

     // if (!(each == 'Admin' || each == 'Developer')) {
    //count++;
  }

 System.debug('count value is : ' + count); 


