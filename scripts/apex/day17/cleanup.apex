// Clean up all Opportunity Records created Today 

delete [SELECT Id from Opportunity Where CreatedDate = TODAY];


//Does he know the way to know which fields are required for sObject? while coding without checking in the org
YourObjectType v = new YourObjectType();
insert v ; 
// then it will give you the error about which fields are required and copy from there

