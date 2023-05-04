public class DailyAccountCleanup implements Schedulable{
   
    public void execute(SchedulableContext context){

    // delete all accounts created Today
    List<Account> todaysAccounts = [SELECT Id FROM Account
                                   WHERE CreatedDate = TODAY]; 
        
       if(!todaysAccounts.isEmpty()){
          delete todaysAccounts ; 
         }
  
   }
   // for(CronTrigger eachJob : [select id from CronTrigger] ){
    //     System.abortJob(eachJob.id);
    //  }

}

