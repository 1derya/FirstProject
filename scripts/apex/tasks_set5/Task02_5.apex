/*
2. Write a program that store List of long with 10 
items with positive and negative numbers and 
print out all positive values using for loop 
try using the continue instead.
*/

List<Long> cases = new List<Long> {147254141L, -258962525L, -14752411L, 5155144L, -5151545L , 998469L, -4498661L,
5651616L, -95165151L , 215151561L};

for(Integer index = 0; index < cases.size(); index++ ){
    if (cases.get(index)< 0){
        continue;
    }
    System.debug('Positive values : ' + cases.get(index));
}