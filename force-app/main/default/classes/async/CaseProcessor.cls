public  class CaseProcessor  implements Database.Batchable<SObject> , Database.Stateful{

    Integer totalProcessed = 0;

    public Database.QueryLocator start(Database.BatchableContext bc){

        return Database.getQueryLocator(SELECT Id, Subject, Status, isClosed, CreatedDate, Priority 
                                        FROM CASE WHERE CreatedDate < LAST_N_DAYS:365)
    }

    public void execute(Database.BatchableContext bc ,List<Opportunity> recordsInBatch){

    }

}



   
