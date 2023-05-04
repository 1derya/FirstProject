public  class BankAccount {

 
    // accountHolder, accountNumber, balance
    // private fields are not accessible outside the class
    // in order to make it available for Test 
    // we can use @TestVisible annotation 
    @TestVisible
    private String accountHolder;
    @TestVisible 
    private Integer accountNumber;
    @testVisible
    private Decimal balance; 

  public BankAccount(){
        System.debug('Message from BankAccount 0 param constructor '); 
    }
      // constructor overloading (overloading means using same name with different parameter list)
    public BankAccount(String accountHolder,Integer accountNumber, Decimal balance ){
        this.accountHolder = accountHolder ; 
        this.accountNumber = accountNumber ; 
        this.balance       = balance ;  
    }


  //Create a void method called showDetail
  // accept no parameters 
  //print the details of current object 
  //Account Holder name XX, Number :YY, Balance : ZZ
  public void showDetails(){


    System.debug('Account    Holder name: '  + accountHolder
                            + ', Number : '  + accountNumber
                            + ', Balance : ' + balance  );

    }
    //Create a method called getBalance
    //accept no parameter
    //simply return current balance
    public Decimal getBalance(){
        // DO SOME VERY COMPLEX CHECK 
        // BEFORE DOING BELOW RETURN
        return this.balance;
    }

    //Create a void method called depozit
    //accept 1 Decimal parameter
    //increase the balance by the number provided
    // minues number should not be allowed 
    public void deposit(Decimal newMoney){
         //complex operation goes here
         //avoid minutes or value

         if(newMoney >0){
         
            this.balance += newMoney;
           //this.balance = this.balance + newMoney;
         }else{
            System.debug('INVALID NUMBER!!!'); 
            
         }
    }
    // create a void method called withdraw
    // accept 1 Decimal parameter  
    // decrease the balance by the number provided
    // CAN NOT WITHDRAW THE MONEY YOU DONT HAVE 
    public void withdraw(Decimal money){

      if(money <= this.balance ){
         this.balance -= money ; 
      }else {
        System.debug(' CAN NOT WITHDRAW THE MONEY YOU DONT HAVE '); 
      }
    }
    // create a void method called setupAccount
    // accept 3 parameters for 
    // assign value to 3 instance fields   
    public void setupAccount(String holder, Integer num, Decimal balance){

      this.accountHolder = holder  ; 
      this.accountNumber = num  ; 
      this.balance       = balance ; 

    }
    //Create a void method called changeName
    //accept 1 parameters for
    //(re)assigning the name filed value
    public void changeName(String newName){
        this.accountHolder = newName ; 
    }





}





    
