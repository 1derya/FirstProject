trigger CreateOpportunity on Account (after insert, after update) {
//Create a new Opportunity whenever an account is created/updated for Industry – Agriculture.
// Opportunity should be set as below:
// Stage = ‘Prospecting’, Amount = $0, CloseDate = ’90 days from today’.

List<Opportunity> newList = new List<Opportunity>();
 if (Trigger.isAfter && (Trigger.isInsert|| Trigger.isUpdate)){

for(Account acc:Trigger.new){

    if(acc.Industry=='Agriculture'){
    Opportunity opp =  new Opportunity();
    opp.AccountId= acc.Id;
    opp.Name='Our Opp';
    opp.StageName= 'Prospecting';
    opp.Amount=0;
    opp.CloseDate=System.today()+90;
    newList.add(opp);


    }
    
}
if(!newList.isEmpty()){
    insert newList;
}



 }



}