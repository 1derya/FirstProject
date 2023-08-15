trigger RecursiveAccountTrigger on Account (After insert) {

    List<Account> accList  = new List<Account> ();

    if(AccountController.isFirstCall){
        AccountController.isFirstCall=false;

        For(Account each: trigger.new){
       
            Account child  = new Account();
            child.ParentId = each.Id;
            child.Name = 'Test from Julia';
            accList.add(child);
    
        }
    }

  
    insert accList;

}