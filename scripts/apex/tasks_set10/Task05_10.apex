/**
5. Create List of Opportunity 
   - Add 10 items in it with valid Opportunity required fields filled up 
      - Name,  Opp - 1(2,3,4,5..10)
      - ClosedDate (10 days from Today), 
      - StageName ='Prospecting', 
      - Amount  random Integer between 0-100000
   - insert the list into your org 

   - Create an Account with Name = 'Parent of Cool Opps'
   - insert into Salesforce org 

   - Create an empty List of Opportunity called coolOppsList
      - Loop through your entire List of 10 items 
      - If amount is greater than 60000
         - Update AccountId field to Id of Account you created earlier
         - Add the Opportunity to coolOppsList

   - Update the coolOppsList in your org 
   - Go to user interface and observe you have filled up 
     Account Name field of all opportunities that has amount
     field over 60000 to 'Parent of Cool Opp'
 */
/*
List<Opportunity> myOppList = new List<Opportunity>();

for (Integer i = 0; i < 10; i++) {
  myOppList.add(
    new Opportunity(
      Name = 'Opp - ' + i,
      CloseDate = Date.today().addDays(10),
      StageName = 'Prospecting',
      Amount = Math.round(Math.random() * 100000)
    )
  );
}
System.debug('myOppList value is : ' + myOppList); 
insert myOppList ;

Account a1 = new Account(Name= 'Parent of Cool Opps');
insert a1 ;

List<Opportunity> coolOppsList = new List<Opportunity>();

for(Integer each : myOppList) {
    if( each.Amount> 60000 ){
        each.AccountId=a1.Id;
        coolOppsList.add(each);
        
    }
}
    update coolOppsList;
*/
System.debug('------------------');
/*
List<Opportunity> oppList = new List<Opportunity>();

for (Integer i = 1; i <= 10; i++) {
  oppList.add(
    new Opportunity(
      Name      = 'Opp ' + i,
      CloseDate = Date.today().addDays(10),
      StageName = 'Prospecting',
      Amount    = (Math.random() * 100000).intValue()
    )
  );
}

insert oppList;
System.debug('oppList value is : ' + oppList); 
Account accVar = new Account( Name = 'Parent of Cool Opps');
insert accVar;


List<Opportunity> coolOppsList = new List<Opportunity>();

for (Opportunity each : oppList) {
  if (each.Amount > 60000) {
    each.AccountId = accVar.Id;
    coolOppsList.add(each);
  }
}

update coolOppsList;

System.debug(coolOppsList); 
*/
System.debug('------------------');
/**
For Loops executes a block of code until an expression returns
 false while ForEach loop executed a block of code through the 
 items in object collections. For loop can execute with object 
 collections or without any object collections while ForEach loop can execute with object collections only.
*/
System.debug('------------------');
// Create List of Opportunity
List<Opportunity> oppList = new List<Opportunity> ();  
// Add 10 items in it with valid Opportunity required fields filled up
for(Integer i=1; i<=10 ;i++) {

    Opportunity opp = new Opportunity(); 
    // Name, Opp - 1(2,3,4,5..10)
    opp.Name = ' X Opp - ' + i ; 
    // ClosedDate (10 days from Today),
    opp.CloseDate = Date.today().addDays(10) ; 
    // StageName ='Prospecting', `
    opp.StageName = 'Prospecting' ;
    // Amount : random Integer between 0-100000
    opp.Amount   = Math.round( Math.random() * 100000); 
    // add it to the list 
    oppList.add( opp ) ; 
}
// insert the list into your org
insert oppList ; 

// Create an Account with Name = 'Parent of Cool Opps'
Account coolAccount = new Account(Name = 'Parent of very Cool Opps'); 
// insert into Salesforce org
insert coolAccount ; 

// Create an empty List of Opportunity called coolOppsList
List<Opportunity> coolOppsList = new List<Opportunity> (); 

// Create an empty List of Opportunity called lowOppslist
// store the opps with amount less than or equals 600000
List<Opportunity> lowOppsList = new List<Opportunity> (); 

// Loop through your entire List of 10 items
for(Opportunity each : oppList) {
   
    // If amount is greater than 60000
    if(each.Amount > 60000){
    // Update AccountId field to Id of Account you created earlier
        each.AccountId = coolAccount.Id ; 
    // Add the Opportunity to coolOppsList
        coolOppsList.add(each); 
    }else{//if it's less than or equals 60000
        //add it to lowOppsList
        lowOppsList.add(each);
    }
}
System.debug('coolOppsList value is : ' + coolOppsList); 
System.debug('lowOppsList value is : ' + lowOppsList); 

// Update the coolOppsList in your org
update coolOppsList ; 

// delete the lowOppsList from your org 
delete lowOppsList ; 

// Go to user interface and observe you have filled up Account
//Name field of all opportunities that has amount over 60000 to 
//'Parent of Cool Opp' Account record


System.debug('------------------');

List<Opportunity> opps = new List<Opportunity>();

for(Integer i = 1; i <= 10; i++){

   Opportunity opp = new Opportunity();

   opp.Name = 'Opp - ' + i;
   opp.CloseDate = Date.today() + 10;
   opp.StageName = 'Prospecting';

   Double num = Math.random() * 100000;
   opp.Amount = num.round();

   opps.add(opp);

}

insert opps;

Account acct = new Account(Name = 'Parent of Cool Opps');

insert acct;

List<Opportunity> coolOppsList = new List<Opportunity>();

for(Opportunity eachOpp : opps){

   if(eachOpp.Amount > 60000){

      eachOpp.AccountId = acct.Id;
      coolOppsList.add(eachOpp);
   }
}

update coolOppsList;