/**
Collection : for storing more than one values 
There are 3 types of collection 

List : ordered collection to store multiple values of same type,
       allow duplicate
Set  : unordered collection to store multiple unique values of 
       same type removing
Map  : store key value pair in each element (more on that later)

 */

 //Syntax for Creating a List variable
 //and initializing it's value

 //List<DataType> nameOfYourVariable
            //= new List< DataType>();
 List<String> studentNames = new List<String>();
 
//we can use yourListVariable.add(what you want to add here);
//to add elements into the List
 studentNames.add('Nurzat');
 studentNames.add('Ali') ;
 studentNames.add('Esra') ;

 System.debug(studentNames);
/**
Creat a List of Integer with name scores
and add 5 items in it
 */
List<Integer> score = new List<Integer>();
score.add(100);
score.add(200);
score.add(300);
score.add(400);
score.add(500);

System.debug(score);
/**
Declare a List of Decimal variable called prices
and initialize it's value
Add 4 items|element in it and print it out
 */
 List<Decimal> prices = new List<Decimal>();
prices.add(9.99);
prices.add(19.99);
prices.add(29.87);
prices.add(11000.54);

System.debug(prices);
