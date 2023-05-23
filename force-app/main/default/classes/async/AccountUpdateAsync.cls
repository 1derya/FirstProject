public class AccountUpdateAsync implements Queueable{
    
    String description ; 
    List<Account> accLstToProcess ; 


    public AccountUpdateAsync(String description, List<Account> accLstToProcess) {
        this.description = description ; 
        this.accLstToProcess = accLstToProcess ; 
    }


    public void execute(QueueableContext context) {
        // awesome code here
        System.debug('Running some awesome code in AccountUpdateAsync'); 
        // print out value of description field 
        System.debug('description value is : ' + this.description);

        // update the description field of the List of account to 
        // the description provided. 

        for(Account each : accLstToProcess) {
            
            each.Description = this.description ; 

        }
        update accLstToProcess ; 
        

        
    
    //RIGHT AFTER WE ARE DONE WITH ACCOUNT UPDATE
    //we want to perform another aysnc code
    //that need to happen right after account update

    TaskAfterAccountUpdate tq = new TaskAfterAccountUpdate(); 
        System.enqueueJob(tq); 
    }      



}

    
    
