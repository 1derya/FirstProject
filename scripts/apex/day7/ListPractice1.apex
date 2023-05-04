/**
Declare List variable initialize it's value
and add the items in one shot

List<DataType> listName
        =new List{item1,item2,....itemN};
 */

 List<String> groceries = new List<String>{'Milk','Bread','Egg','Coffee'};
 System.debug(groceries);

 //creat list of integer and add 5 values in one shot
List<Integer> numList= new List<Integer>{1,5,6,8,4};
System.debug(numList);
 //creat list of Decimal and add 5 values in one shot
List<Decimal> prices= new List<Decimal>{1.99,2.99,5.88,100.99,0.99};
 System.debug(prices);
 
 //creat list of Id   and    add 5 values in one shot
 List<Id> accountIds = new List<Id>{ '0018W0000251OK6QAM', 
                                    '0018W0000251OK6QAT', 
                                    '0018W0000251OK6QAY', 
                                    '0018W0000251OK6QAZ', 
                                    '0018W0000251OK6QAA'
                                    }; 
System.debug(accountIds) ;

//creat list of Boolean add 5 items into it in one shot
List<Boolean> answers = new List<Boolean>{true,false, true, true,false};
System.debug(answers);