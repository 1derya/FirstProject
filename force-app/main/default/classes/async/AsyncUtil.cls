public class AsyncUtil {

    /**
     * Create a static void method called boilWater
     * simply print boiling water
     * Add @future annotation on top of the method
     */

     /**
    @future will make a method as future method
    future method is always static void method
    it can have parameters, the type can not be sObject
    it can be any primitive types like String, Integer, Double, Id and so on 
    it can also be List of those types*/
     @future
     public static void boilWater(){
       System.debug('boiling water...'); 
       
     }

     @future
    public static void updateCurrentUserRoleToCFO(){

        Id userId = UserInfo.getUserId();
        User u = [SELECT Id, FirstName, Division FROM USER 
                    WHERE Id = :userId]; 
        // update User role to CFO 
        UserRole roleCFO = [SELECT Id,Name from UserRole Where Name='CFO']; 

        u.UserRoleId = roleCFO.Id ; 
        update u ; 

   
   
    }
}

/**
 * Future method run on it's own execution context and get it's own limits
Batch Apex is used to run large jobs (think thousands or millions of records!) that would exceed normal processing limits. Using Batch Apex, you can process records asynchronously in batches (hence the name, “Batch Apex”) to stay within platform limits. If you have a lot of records to process, for example, data cleansing or archiving, Batch Apex is probably your best solution.

Here’s how Batch Apex works under the hood. Let’s say you want to process 1 million records using Batch Apex. The execution logic of the batch class is called once for each batch of records you are processing. Each time you invoke a batch class, the job is placed on the Apex job queue and is executed as a discrete transaction. This functionality has two awesome advantages:
Every transaction starts with a new set of governor limits, making it easier to ensure that your code stays within the governor execution limits.
If one batch fails to process successfully, all other successful batch transactions aren’t rolled back.
 */


 /**
 The reason why sObjects can't be passed as arguments
  to future methods is because the sObject can change 
  between the time you call the method and the time it
  executes. In this case, the future method gets the 
  old sObject values and can overwrite them.
  */