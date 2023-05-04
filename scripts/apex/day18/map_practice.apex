// Create a priceMap , productName , price 
// add 5 items 
// use all the methods we learned above 
// do this task right now for 5-7 minutes 
/* Map<String,Decimal> priceMap = new Map<String,Decimal>() ; 
priceMap.put('Apple', 5.75);
priceMap.put('Orange', 4.99);
priceMap.put('Grape', 8.99);
priceMap.put('Strawberry', 10.59);
priceMap.put('Banana', 2.5);
System.debug('priceMap value is : ' + priceMap);  */

/**
Decimals - A number that includes a decimal point. Decimal is 
an arbitrary precision number. 
In Apex, currency fields are automatically assigned the type
 Decimal. Also Decimal has a lot of built-in methods and 
 rounding options, so it’s helpful to use this instead of 
 double.

Double - Also a number that includes a decimal point. 
From –massive to massive (e.g., they have the same min 
and max as the Long data type
 */


//Creating Map with value filled up already

Map<String, Decimal> priceMap = new Map<String, Decimal> {
                                              'Apple' => 5.75,
                                              'Orange' => 4.99,
                                              'Grape' => 8.99,
                                              'Strawberry' => 10.59,
                                              'Banana' => 2.5
                                                };

System.debug('priceMap value is : ' + priceMap);

// check if this map contains Mango , if not then add Mango => 6.99
if( ! priceMap.containsKey('Mango')   ){
    priceMap.put('Mango', 6.99); 
}

System.debug('priceMap value is : ' + priceMap);//priceMap value is : {Apple=5.75, Banana=2.5, Grape=8.99, Mango=6.99, Orange=4.99, Strawberry=10.59} 


// if Banana price is greater than 2 ==> update it to 1.99
if( priceMap.get('Banana') > 2){
    priceMap.put('Banana' , 1.99) ;
}
System.debug('priceMap value is : ' + priceMap); 
//priceMap value is : {Apple=5.75, Banana=1.99, Grape=8.99, 
//                      Mango=6.99, Orange=4.99, Strawberry=10.59}

// keySet() method , return all the keys in Set<YourKeyDataType>

Set<String> allKeys =  priceMap.keySet() ;
System.debug('allKeys value is : ' + allKeys); 
//allKeys value is : {Apple, Banana, Grape, Mango, Orange, Strawberry}

//Iterate over each key and print it out //iterating set not map
for(String eachKey : allKeys) {
    System.debug('Current key : ' + eachKey);
    System.debug('value of this key ' + priceMap.get(eachKey)) ;
    System.debug('------------------');
    
}
// This is what happen in each and every iteration of above loop 

// System.debug('Current key : ' + 'Apple');
// System.debug('Value of this key ' +  priceMap.get('Apple') ) ; 
// System.debug('------------------');

// System.debug('Current key : ' + 'Banana');
// System.debug('Value of this key ' +  priceMap.get('Banana') ) ; 
// System.debug('------------------');

// System.debug('Current key : ' + 'Grape');
// System.debug('Value of this key ' +  priceMap.get('Grape') ) ; 
// System.debug('------------------');

// System.debug('Current key : ' + 'Mango');
// System.debug('Value of this key ' +  priceMap.get('Mango') ) ; 
// System.debug('------------------');

// System.debug('Current key : ' + 'Orange');
// System.debug('Value of this key ' +  priceMap.get('Orange') ) ; 
// System.debug('------------------');

// System.debug('Current key : ' + 'Strawberry');
// System.debug('Value of this key ' +  priceMap.get('Strawberry') ) ; 
// System.debug('------------------'); 

// values() method , return all the values in List<YourValueDataType>
List<Decimal> priceList = priceMap.values() ;
System.debug('priceList value is : ' + priceList); 
//priceList value is : (5.75, 4.99, 8.99, 10.59, 1.99, 6.99)

