trigger CreateTimeSheet on Project_Tasks__c (after insert, after update) {
    
    if (Trigger.isAfter && Trigger.isInsert){
        CreateTimeSheetHandler.handlerMethod(trigger.new);
    }
    
    if(Trigger.isAfter && Trigger.isUpdate){
        CreateTimeSheetHandler.handlerMethod(trigger.new);
    }
}