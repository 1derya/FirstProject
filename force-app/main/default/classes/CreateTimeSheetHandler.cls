public class CreateTimeSheetHandler {
    public static Boolean firstRun = true;
    public static void handlerMethod(List<Project_Tasks__c> listPT){

        if(!firstRun){
            system.debug('You have already ran this code@=!!!');
            return;
        }
        firstRun = false;
        
        
       List<Time_Sheet_Entry__c> timeSheetToInsert = new List<Time_Sheet_Entry__c>();
            
        for(Project_Tasks__c objPT : listPT ){
            if(objPT.Create_Timesheet_Entry__c == true){
                
             Time_Sheet_Entry__c timeSheet = new Time_Sheet_Entry__c();

                timeSheet.Project_Tasks__c = objPT.Name;
                timeSheet.Project_Tasks__c = objPT.iD;
                timeSheet.Employee__c = objPT.Employee__c;
                timeSheet.Start_Date_Time__c = datetime.now();
                timeSheet.End_Date_Time__c = datetime.now().addDays(7);
                timeSheet.Description__c = objPT.Description__c;
                timeSheet.Project_Task_Status__c = objPT.Status__c;
                timeSheetToInsert.add(timeSheet);
                
            }
        }
            if(!timeSheetToInsert.isEmpty()){
             insert timeSheetToInsert;
             }

      }
   }