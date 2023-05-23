/**
public class AddPrimaryContact implements Queueable {
    
    public Contact c;
    public String state;
    
    public AddPrimaryContact(Contact c, String state){
        this.c = c;
        this.state = state;
    }
    
    public void execute(QueueableContext qc){
        
        System.debug('Contact = ' + this.c + ' State = ' + this.state);
        
        List<Account> accList = new List<Account>();
        accList = [SELECT Id, Name, BillingState FROM Account WHERE BillingState = :this.state LIMIT 200];
        
        List<Contact> insertContact = new List<Contact>();
        
        for(Account a : accList){
            
            contact c = new Contact();
            c = this.c.clone();
            c.AccountId = a.Id;
            insertContact.add(c);
        }
        
        insert insertContact;
        
    }
    
}


Contact con = new Contact(LastName = 'Josh');
AddPrimaryContact addPC = new AddprimaryContact(con, 'CA');
System.enqueueJob(addPC);


@isTest
public class AddPrimaryContactTest {
    
    @testSetup
    static void setup(){
        
        List<Account> insertAccount = new List<Account>();
        
        for(Integer i=0; i <= 100; i++){
            if(i <= 50){
                insertAccount.add(new Account(Name = 'Acc' + i, BillingState = 'NY'));
            }else{
                insertAccount.add(new Account(Name = 'Acc' + i, BillingState = 'CA'));
            }
        }
        insert insertAccount;
        
        }
    
    @isTest
    static void testAddPrimaryContact(){
        Contact con = new Contact(LastName = 'Josh');
        AddPrimaryContact addPC = new AddprimaryContact(con, 'CA');
        
        Test.startTest();
        System.enqueueJob(addPC);
        Test.stopTest();
        
        System.assertEquals(50, [SELECT COUNT() FROM Contact]);
    }
        
    }
 */