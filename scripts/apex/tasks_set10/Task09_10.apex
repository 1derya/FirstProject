/**
9. Create a Account with Name value set 
   - insert it into Salesforce
   - Create a Contact with LastName filled up under this Account
   - insert it into Salesforce
   - Create Task with below fields set 
      - WhatId = Id of the Account above
      - WhoId  = Id of the Contact above 
      - Subject = 'Follow up with YourContactNameGoesHere' ; 
      - Description = 'Have a chat with YourContactNameGoesHere from AccountNameGoesHere'
      - ActivityDate = 7 Days from Today
      - Status = 'Pending' ;
 */
/**
WhatId is the API name for the “Related To” field on the 
Activity-related objects. This field can be associated with 
many different objects including:
Accounts
Opportunities
Campaigns
Cases
Custom Objects
 */
/**
WhoId is the API name for the “Name” field on Activity-related 
objects. Users should look to populate this field when they want
the task to be related to a Lead or Contact record within Salesforce
*/

// Create a Account with Name value set
Account acc = new Account(Name = 'Cydeo1');
// insert it into Salesforce
insert acc ; 
// Create a Contact with LastName filled up under this Account
Contact con = new Contact(LastName='Deg', AccountId =  acc.Id ); 
// insert it into Salesforce
insert con ; 

// Create Task with below fields set
Task t1 = new Task(); 
// WhatId = Id of the Account above
t1.WhatId = acc.Id ; 
// WhoId = Id of the Contact above
t1.WhoId  = con.Id ; 
// Subject = 'Follow up with YourContactNameGoesHere' ;
t1.Subject= 'Follow up with ' + con.LastName    ;
// Description = 'Have a chat with YourContactNameGoesHere from AccountNameGoesHere'
t1.Description = 'Have a chat with '+ con.LastName 
                    + ' from ' + acc.Name ; 

// ActivityDate = 7 Days from Today
t1.ActivityDate = Date.today() + 7 ; 
// Status = 'Pending' ;
t1.Status = 'Pending' ;

insert t1 ; 
System.debug('t1 value is : ' + t1); 




System.debug('------------------');


Account acc1 = new Account(Name = 'Account from VSCode');
insert acc1;

Contact cont1 = new Contact (
   LastName = 'Poslavsky',
   AccountId = acc1.Id
);

insert cont1;

Task task1 = new Task (
   WhatId          = acc1.Id,
   WhoId           = cont1.Id,
   Subject         = 'Follow up with' + cont1.LastName ,
   Description     = 'Have a chat with' + cont1.LastName + 'from ' + acc1.Name,
   ActivityDate    = Date.today() + 7,
   Status = 'Pending' 
);

insert task1;

