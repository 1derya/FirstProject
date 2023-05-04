
//Get 1 Account Record (Name, AnnualRevenue ,Rating )
//SELECT Name, AnnualRevenue, Rating FROM Account LIMIT 1
//and Store it into Account Variable

//Apex and SOQL Work Seamlessly together
//We can use SOQL to get data and store it into
//sObject type or list sObject type
//[YOUR SOQL GOES HERE]
 
Account a1 = [SELECT Name, AnnualRevenue, Rating FROM Account LIMIT 1] ; 
System.debug('a1 value is : ' + a1);

//Get All the account record 
//include,Id, Name, Rating, AnnualRevenue
//Store it into List<Account>
List<Account> accList =[SELECT Id, Name, Rating, AnnualRevenue
                        FROM Account
                        WHERE Rating !=NULL] ;

// Print out the size of the list 
System.debug('accList.size() value is : ' + accList.size() );

// Print out the The Name, Rating in the loop 
for (Account each :accList) {
     System.debug('Name value : ' + each.Name+
                   'Rating value : ' + each.Rating);

}


// Get All the Lead Name, Status if the status is working - Contacted
// Store it into the list and loop through each item
// print the name and status 
/**
 SELECT Name, Status
FROM LEAD
WHERE Status = 'Working - Contacted' 
 */

List<Lead> leadLst = [SELECT Name, Status FROM LEAD
                      WHERE Status = 'Working - Contacted' ] ; 

for(Lead each : leadLst) {
    System.debug(each.Name + ' --> ' + each.Status  );
}






