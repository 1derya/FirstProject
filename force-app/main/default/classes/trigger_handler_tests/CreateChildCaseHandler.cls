/**
     * A method for the logic of after insert event
     * Every time new high priority case is created
     * a child case with Subject of Child case for Parent #CaseNumberGoesHere
     * with priority high should be created
     * @param newCases
     */

public class CreateChildCaseHandler {
    public static Boolean firstRun = true;
  
    public static void handleAfterInsert(List<Case> newCases) {
        if(!firstRun){
            return ; 
        }

      // if you come to this point it means it's the first run 
      firstRun = false ; // this code has already been executed
      // create an empty list of case for storing Child cases about to be created and inserted
      List<Case> childCasesToInsert = new List<Case>();

      //go through each and every newCase created
      for (Case each : newCases) {
        // check if the priority is high
        if (each.Priority == 'High') {
          //if so create child case, add it to list childCasesToInsert 
          Case childCase = new Case();
          childCase.ParentId = each.Id;
          childCase.Subject = 'Child Case for Case #' + each.CaseNumber;
          childCase.Priority = 'High';
          childCasesToInsert.add(childCase);
        }
      }

      firstRun = false;
      //insert the child cases
      if(! childCasesToInsert.isEmpty()){
      insert childCasesToInsert;
       }

   }
}

















// public  class CreateChildCaseHandler {
//    public static Boolean firstRun = true;

//    public static void handleAfterInsert(List<Case> newCases){

//       if(!firstRun){
//         return;
//       }
//    }
//    firstRun = false;
//    List<Case> childCasesToInsert = new List<Case>();

//    for(Case each:newCases){
      
//     if(each.Priority=='High'){

//         Case childCase = new Case();
//         chilCase.ParentId  = each.Id;
//         childCase.Subject  = 'Child Case for Case #' + each.CaseNumber;
//         childCase.Priority = 'High';
//         childCasesToInsert.add(childCase);
//     }
//     insert childCasesToInsert;

//    }

// }