/*1. Write a program than create List of Double with 10 elements 
   print out the first value and last value of the list 
   if first item and last item values are equal 
   print: 'end with what we started '
   else print: 'different beginning and ending' 
    HINT : No Loop Needed Here
*/

List<Double> listPrices = new List<Double>{
  3.95,
  14.59,
  3.99,
  10.60,
  98.99,
  6.99,
  70.39,
  14.55,
  9.98,
  2.95
};
//print out the first value
System.debug('First Price in the the list is : ' + listPrices.get(0));

//print out the last value
System.debug(
  'The last item inn the list is : ' + listPrices.get(listPrices.size() - 1)
);

if (listPrices.get(0) == listPrices.get(listPrices.size() - 1)) {
  System.debug('end is with what we started with');
} else {
  System.debug('different beginning and ending');
}

List<Double> Items = new List<Double>{
  1.1222,
  2.333322,
  4.777,
  1.3333,
  7.66633,
  3.888444,
  2.55588
};
Double firstItem = Items.get(0);
Double lastItem = Items.get(Items.size() - 1);
System.debug(firstItem);
System.debug(lastItem);
if (firstItem == lastItem) {
  System.debug('end with what we started');
} else {
  System.debug('different beginning and ending');
}
/////////
List<Double> priceList = new List<Double>{
  77.207d,
  20.028d,
  27.517d,
  39.274d,
  36.586d,
  77.27d,
  2.028d,
  28.817d,
  139.74d,
  16.5d
};
// how to read first value from the list
Double firsti = priceList.get(0);
//how to read last value from the list
Double lasti = priceList.get(priceList.size() - 1);
if (firsti == lasti) {
  System.debug('end with what we started');
} else {
  System.debug('different beginning and ending');
}


  