// Create a List of Decimal and add 5 values in it 

// optionally , create a variable outside of your loop called sum 
// then use your for each loop to get the sum of all decimal numbers
 Decimal sum = 0 ; 

 for(Decimal eachPrice  : prices){
    //sum = sum + eachPrice ; 
    sum += eachPrice ; 
 }

 System.debug('Sum is ' + sum); 