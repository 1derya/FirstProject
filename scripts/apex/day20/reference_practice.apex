trigger AccountTrigger on Account (before insert, after insert,
                                   before update, after update, 
                                   before delete, after delete,
                                   after undelete) {
    
    
     System.debug('Hello from Trigger');
                                       
                                       
}
Account a1 = new Account(Name = 'Acc from Apex'); 
 insert a1 ; 

 // change the name of a1 to -> Updated Name from Apex
 a1.Name = 'Account_Inserted_Updated_Deleted_Undeleted-1'; 
 // update the Billing State field 
 a1.BillingState = 'VA' ; 
 // use update DML operation to update the record that already in Salesforce
 update a1 ; 
 
 // delete this record from salesforce
 // you can find deleted record under Recycle Bin
 delete a1 ; 

 // restore this deleted record from Recycle bin 
 undelete a1 ;  