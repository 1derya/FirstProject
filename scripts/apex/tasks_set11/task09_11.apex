/**
9. Create a List<Opportunity> and add 5 valid opportunity with required fields
   - StageName, Name , ClosedDate , Amount 
   - insert into Salesforce
   - Get a Map<Id, Opportunity> out of this List<Opportunity>
     - either directly putting the list into () while creating the map 
     - or Create an Empty Map and use putAll method 
     - or use Loop to add it one by one
   - Create an empty Map<String,Decimal> 
     - Loop through your List and 
     - Add the Opportunity Name field value as Key
     - Add the Opportinuty Amoung field value as Value
 */
List<Opportunity> oppList = new List<Opportunity>();
oppList.add(new Opportunity(StageName = 'Prospecting', Name = 'Opp a', CloseDate = Date.today()+7 , Amount = 100000));
oppList.add(new Opportunity(StageName = 'Qualification', Name = 'Opp b', CloseDate = Date.today()+7 , Amount = 200000));
oppList.add(new Opportunity(StageName = 'Needs Analysis', Name = 'Opp c', CloseDate = Date.today()+7 , Amount = 300000));
oppList.add(new Opportunity(StageName = 'Value Proposition', Name = 'Opp d', CloseDate = Date.today()+7 , Amount = 400000));
oppList.add(new Opportunity(StageName = 'Negotiation/Review', Name = 'Opp e', CloseDate = Date.today()+7 , Amount = 500000));

insert oppList;

Map<Id,Opportunity> oppMap = new Map<Id,Opportunity>();
oppMap.putAll(oppList);

Map<String,Decimal> oppAmount = new Map<String,Decimal>();

for(Opportunity eachOpp : oppList) {
    oppAmount.put(eachOpp.Name, eachOpp.Amount);
}    
    System.debug('Current value : ' + oppAmount);

    

