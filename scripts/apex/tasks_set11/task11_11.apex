/**
11. Create List<Case> with 4 Items with name oldList 
     - with below fields
       - Subject set to Sample Case (1,2,3,4)
     - insert into Salesforce
   - Create a Map<ID, Case> from above List call it oldMap
     - It should contain ID of case as key, the Case itself as value
   - Print out the oldList variable 
     - Observe It should be the List with ID generated
   - Print out the oldMap  variable 
     - Observe key is ID and value is Record itself

   - Create a new List<Case> called newList
     - Copy everything from oldList into newList in one shot
   - Now Iterate over your newList with 4 copied Items above
     - Update the Subject field value to 
       - Whatever is the current Value followed by string  New
       - So it will Sample Case (1,2,3,4) New
     - Issue a DML statement to reflect the changes in Salesforce
   - Create a Map<ID, Case> from above List call it newMap
      - It should contain ID of case as key, the Case itself as value

   - Print out the newList variable 
     - Observe It should be the List after the update
   - Print out the newMap  variable 
     - Observe It should be the Map after the update

TASK 11 UPDATE , PRINT ORDER HAS BEEN UPDATED

This task is extremely important to understand next topic about to come : Apex Trigger
 */

List<Case> oldList = new List<Case>();
for(Integer i=1; i<5 ;i++) {
  oldList.add(new Case (Subject = 'Sample Case '+i));
}
//insert oldList ;
System.debug('Old List : ' + oldList); 

Map<ID, Case> oldMap = new Map<ID, Case>();
for(Case eachCase : oldList) {
    oldMap.put(eachCase.Id, eachCase);
}
System.debug('Old Map : ' + oldMap);

List<Case> newList = new List<Case>(oldList);
for(Case eachCase : newList) {
    eachCase.Subject = eachCase.Subject + ' New' ;
}

//update newList;
System.debug('New List : ' +newList); 

Map<ID, Case> newMap = new Map<ID, Case>();
for(Case eachCase : newList) {
    newMap.put(eachCase.Id, eachCase);
}
System.debug('New Map : ' +newMap);

System.debug('------------------');

List<Case> oldList1= new List<Case>();
oldList1.add(new Case(Subject = 'Sample Case 1') );
oldList1.add(new Case(Subject = 'Sample Case 2') );
oldList1.add(new Case(Subject = 'Sample Case 3') );
oldList1.add(new Case(Subject = 'Sample Case 4') );

Map<ID, Case> oldMap1 = new Map<ID, Case>();
oldMap1.putAll(oldList1);
System.debug(oldList1);
System.debug(oldMap1);

List<Case> newList1 = new List<Case>(oldList1);
for(Case eachCase1 : newList1){
    eachCase1.Subject = eachCase1.Subject + ' New';
}

Map<ID, Case> newMap1 = new Map<ID, Case>();
for(Case each :newList1 ) {
    newMap1.put(each.Id, each);
}
System.debug(newMap1);


