trigger PreventAccountDeletion on Account (before delete) {

//  Given: There is any associated Contact to an Account,

//  When: User tries to delete the Account,

//  Then: User should get the error that Account with associated Contact can not be deleted.

 List<Account> accList = [SELECT Id, Name From Account WHERE Id IN (SELECT AccountId From Contact) And Id IN:Trigger.old];


if(Trigger.isDelete && Trigger.isBefore){
    for(Account acc: accList){
        Trigger.oldMap.get(acc.Id).addError('You cannot delete this account');


        
    }



}



}