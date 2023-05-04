@isTest
  public without sharing class AccountControllerTest {

    @isTest(SeeAllData=true)
    static void testDifferentUserAccessRecord(){
       
        // Create a user with standart user profile
        //unique username
        String uniqueUserName = 'Derya Durak' + DateTime.now().getTime() + '@force.com';
        //profile Id
        profile p =[SELECT Name FROM PROFILE WHERE Name = 'Standard User' LIMIT 1] ;
        //all the User Object details that required (will copy from the example)
        User u = new User(
            Alias = 'js',
            Email = 'standarduser@testorg.com',
            EmailEncodingKey = 'UTF-8',
            LastName = 'Testing',
            LanguageLocaleKey = 'en_US',
            LocaleSidKey = 'en_US',
            ProfileId = p.Id,
            TimeZoneSidKey = 'America/Los_Angeles',
            UserName = uniqueUserName
          );

           // Print out currently logged in user name
           System.debug('UserInfo.getName()  value is : ' + UserInfo.getName() );
           List<Account> allAccounts1 = AccountController.getAllAccounts() ; 
           System.debug('allAccounts1.size()  value is : ' + allAccounts1.size() );
    
    
           // Run as newly created user and print out username 
           System.runAs(u){

              System.debug('UserInfo.getName()  value is : ' + UserInfo.getName() );
              List<Account> allAccounts2 = AccountController.getAllAccounts() ; 
              System.debug('allAccounts2.size()  value is : ' + allAccounts2.size() );
        
           }


           // Print out currently logged in user name

          //run as this user
          //print out the detail of current user
    }

    @isTest

    static void testRunAsOtherRole(){
  
  // Creata a user (need profile Id and Role Id) with standard user profile and Eastern Sales Team Role
      // Create a user with standard user profile
  // unique username
  String uniqueUserName ='YourNameHere' +DateTime.now().getTime() +'@force.com';
  // profile Id
  Profile p = [ SELECT Name, Id FROM PROFILE WHERE Name = 'Standard User' LIMIT 1];
  // role Id 
  UserRole ur = [SELECT Name, Id FROM UserRole WHERE Name = 'Eastern Sales Team' LIMIT 1]; 

  // all the User Object details that required (will copy from the example)
   User u = new User(
    Alias = 'js',
    Email = 'standarduser@testorg.com',
    EmailEncodingKey = 'UTF-8',
    LastName = 'Testing',
    LanguageLocaleKey = 'en_US',
    LocaleSidKey = 'en_US',
    ProfileId = p.Id,
    UserRoleId = ur.Id,
    TimeZoneSidKey = 'America/Los_Angeles',
    UserName = uniqueUserName
   );



 }


   
}

//In Salesforce, the method "Test.loadData" is used to 
//  insert test data into an Apex test class. 
//  This method is used to load data from a CSV file 
//  into a test class and is often used when writing 
//  test classes for Apex triggers or batch classes.


//In Salesforce, test coverage refers to the percentage 
// of code lines that are executed by the tests in an organization. 
// Salesforce requires that all Apex code must have at least 75% 
// code coverage before it can be deployed to a production environment.


//In Salesforce, System.runAs is a method that allows you 
// to temporarily change the user context for a block of code 
// in a test class. It is used to test functionality that is 
// dependent on the user's profile, role, or permissions, and 
// to ensure that the code behaves as expected for different 
// user scenarios.

