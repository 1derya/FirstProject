trigger OppUpdateTrigger on Opportunity (after update) {

    /**
     * If Opportunity amount is updated to greater than 100000
     * Update the description field to high amount
     * if not update it to low amount
     * 
     * This is a scenario good for before update
     * In this situation, we are using after update to demonstrate
     * this will cause recursive trigger execution that eventually fail
     * and Salesforce will prevent this from happening by throwing
     * System.FinalExeption record is locked error in the UI
     *
     * To fix this, we can use a static variable in handler class
     * to keep track of whether this trigger already been executed or not
     * if so stop the execution
     * else it means it's running for the first time execute the code
     */
      OppsTriggerHandler.handleAfterUpdate(Trigger.new);
      
       // In after update event, Trigger prevent updating anything
       // inside Trigger.new directly 
       // below line will make a copy of opp entered the trigger
       // and we can update the cloned one
       //Opportunity oppNew = each.clone(true);
    

    // List<Opportunity> updatedOpps = new List<Opportunity>(); 

    // for(Opportunity each : Trigger.new) {
       
    //     if(each.Amount > 100000){
    //         each.Description = 'high amount';
    //     }else {
    //          each.Description = 'low amount';
    //     }
        
    //     updatedOpps.add(each);  

    // }

    //    // once we are done with our logic
    //    // update the Opportunities

    // update updatedOpps ; 
     


}