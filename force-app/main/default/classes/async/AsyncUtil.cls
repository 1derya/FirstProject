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
   
}

/**
 * Future method run on it's own execution context and get it's own limits
Batch Apex is used to run large jobs (think thousands or millions of records!) that would exceed normal processing limits. Using Batch Apex, you can process records asynchronously in batches (hence the name, “Batch Apex”) to stay within platform limits. If you have a lot of records to process, for example, data cleansing or archiving, Batch Apex is probably your best solution.

Here’s how Batch Apex works under the hood. Let’s say you want to process 1 million records using Batch Apex. The execution logic of the batch class is called once for each batch of records you are processing. Each time you invoke a batch class, the job is placed on the Apex job queue and is executed as a discrete transaction. This functionality has two awesome advantages:
Every transaction starts with a new set of governor limits, making it easier to ensure that your code stays within the governor execution limits.
If one batch fails to process successfully, all other successful batch transactions aren’t rolled back.
 */