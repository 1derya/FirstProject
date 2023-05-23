/**
Create a Queueable Apex class that 
inserts the same Contact for each Account for a specific state
AddPrimaryContact q = new AddPrimaryContact(contactObject,'CA');
system.enqueJob(q);
 */


public with sharing class AddPrimaryContact implements Queueable{
       
   String state ;
   Contact con ;

   Public AddPrimaryContact(Contact con,String state){
     this.con = con ;
     this.state = state ;

   }

   public void execute(QueueableContext context){

     // get all Account belong to given state
     // Retrieve 200 Account Records
     List<Account> accLst = [SELECT Id, BillingState FROM Account 
                            WHERE BillingState = :state LIMIT 200];
         // add the given contact object to all these Accounts
         List<Contact> toBeInsertedCons = new List<Contact>(); 

// go through all the accounts in above Account list 
// and add the account Id to the cloned contact and add it to the list 
for(Account each : accLst) {
    // clone the contact to get a copy of the provided contact to add
    // and ensure it does not have ID since we are inserting it 
    Contact clonedCon = this.con.clone(); 
    clonedCon.AccountId = each.Id ; 
    toBeInsertedCons.add(clonedCon) ; 

}
// Perform DML to insert all contacts 
if (!toBeInsertedCons.isEmpty()) {
    insert toBeInsertedCons ;     
}


}

}

/**
Just to clarify, as per requirement it's asking you to 
create duplicate contacts under those Accounts in certain 
state, we merely followed the requirement and it's not 
necessarily good requirement because we ended up created 
bunch of duplicate contacts.

Better Trailhead requirement for the Task should be asking 
is to update the new Contact name with 1-2-3-4-5 to avoid 
adding duplicate contacts created, because according to 
this requirement , if you have 50 Account in given State, 
you will end up creating 50 Contacts with Same name which 
is duplicate
 */