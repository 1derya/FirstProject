// Task 3 Apex SOQL :
/**
Get the Id of Account with name Super Parent.
Get all the Opportunities with no Parent Account 
association (AccountId is empty)
and store it in the list called orphanOpps. 
Add All the orphanOpps under Account with name Super Parent.
*/

// Get the Id of Account with name Super Parent.
//Account supeAcc = [SELECT Id FROM Account WHERE Name='Super Parent' LIMIT 1];
//Id supeAccId = supeAcc.Id ; 

Id supeAccId = [SELECT Id FROM Account WHERE Name='Super Parent' LIMIT 1].Id ; 

// Get all the Opportunities with no Parent Account association (AccountId is empty)
// and store it in the list called orphanOpps.
List<Opportunity> orphanOpps = [SELECT Name, Amount
                                FROM Opportunity
                                WHERE AccountId = NULL]; 
// Add All the orphanOpps under Account with name Super Parent.
for(Opportunity each : orphanOpps) {
    each.AccountId = supeAccId ; 
    each.Amount = 1000 ; // just to make trigger happy
}

// perform DML Operaiton to save it 
update orphanOpps ; 

//## Task 5:  Apex SOQL : 

// Create a Contact called Super Jon under Account with name Super Parent in UI. 
// Now in Apex
// Get the Id of Contact with name Super Jon.
// Get all the Cases with no Contact association (ContactId is empty)
// and store it in the list called orphanCases. 
// Add All the orphanCases under Contact with name Super Jon.

Id conId =[SELECT Id FROM Contact WHERE Name='Super Jon' ].Id;

List<Case> orphanCases =[SELECT Id 
                         FROM Case 
                         WHERE ContactId = null]

for (Case each : orphanCases){
     each.ContactId = conId ; 
}

update orphanCases ;



