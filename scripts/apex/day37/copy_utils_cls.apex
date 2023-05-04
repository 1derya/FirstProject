public  class Utils {

   /**
    Create a static method called getContact that accept lastName
    and return Contact sObject with that lastName
   
    */
    public static Contact getContact(String lName){
       
        Contact c =new Contact(LastName =lName);
        return c ;     

    }
      /**
     * Create a static method called getContacts 
     * that accept lastName as String , 
     * count of contacts as Integer
     * and return List of Contact 
     *  with size = the count of contact 
     *  with lastName = lastName+1 2 3 4 5 
     */
    public static List<Contact> getContacts(String lName, Integer count){

List<Contact> cons = new List<Contact>(); 

for(Integer i=1; i<=count ;i++) {
    
    cons.add(   new Contact(LastName = lName )   ); 

}
return cons ; 

}

/**
* The Apex class must have a public static method called insertNewAccount
  The method must accept an incoming string as a parameter,
     which will be used to create the Account name
  The method must insert the account into the system
      and then return the record
     
*/
public static Account insertNewAcoount(String accName){

    Account a = new Account(Name = accName);
    insert a;

    return a;

}

    
// public static Account insertNewAccount(String accName) {
//         Account a = new Account(Name = accName);
    
//         try {
//           insert a;
//           System.debug('everything is great');
//           return a;
//         } catch (Exception e) {
//           System.debug('ERROR OCCURED !!!!');
//           return null;
//         }
        
//       }


/**
 /**
   * Create a method called getAccountAndContacts
   * It will get accoutName and and contact count as parameters 
   * return Account with child contacts created under this account 
   * the contact lastName should be : account name contact + 1 2 3 4 5
   * the account and contacts should be inserted into Salesforce
   * 
   */
  public static Account getAccountAndContacts(String accName, Integer contactCount){

Account a = new Account(Name = accName);
insert a ; 
//create empty list of contact to store all child contacts to be inserted 
List<Contact> contacts = new List<Contact>(); 
// use loop to go through iterations according to contactCount
 for(Integer i=1; i<= contactCount ;i++) {
   // add new contacts to the list 
   contacts.add(  new Contact(LastName = accName+' contact '+i , AccountId = a.Id )  ) ; 
   
 }
 // perform dml outside the loop 
 insert contacts ; 

 return a ; 
}
 /**
  * Create a method called getLead 
   * It expect the lastName and Company 
   * and doInsert as boolean for Parameters
   * 
   * it create lead with given lastName and company 
   * and fill up other fields with default values 
   * phone, industry, title , leadSource 
   * if doInsert is true it will insert it to salesforce
   * if not it will not insert 
   * 
   * return the newly created lead 
  */   
  Public static Lead getLead(String lName, String Company,Boolean doInsert){
     
    Lead l =new Lead(LastName= lName, Company = company);
    l.phone = '7034560124';
    l.Industry = 'Technology';
    l.Title = 'Salesforce Developer';
    l.LeadSource ='Web';

    if(doInsert){
        insert l;
    } 

    return l;

  }
  /**
  * Create a method called getLeads
   * It expect the lastName and Company 
   * and doInsert as boolean for Parameters
   * 
   * it create a list of lead with given lastName(1234) and company(1234) 
   * and fill up other fields with default values 
   * phone, industry, title , leadSource 
   * if doInsert is true it will insert it to salesforce
   * if not it will not insert 
   * 
   * return the newly created lead 
  */  
  public static List<Lead> getLeads(String lName, 
                                    String company, 
                                    Boolean doInsert,
                                    Integer count){

      List<Lead> leadLst = new List<Lead>();

      for(Integer i=1; i<= count ; i++){
                                            //FALSE BECAUSE WWE DO NOT INSERT IN THE LOOP
        Lead myLead =  getLead(lName + i, company + i,false);
        leadLst.add(myLead );
      }

      If(doInsert){
        insert leadLst;
      }
      return leadLst;
  }