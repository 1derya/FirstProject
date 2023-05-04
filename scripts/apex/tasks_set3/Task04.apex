/**
4. Create two Integer as startingNumber and endingNumber
initialize their value (startingNumber should be less than endingNumber in this case).
use for loop to count up by one starting from startingNumber and end at endingNumber

 */
Integer startingNumber = 1;
Integer endingNumber = 10;
for(Integer count =startingNumber ; count<=endingNumber ; count++){
    System.debug(count);
}

List<Decimal> lenght = new List<Decimal>{3.14,2.2,1.5,
                         1.9,7.4,6.7,4.6,8.9,5.7,4.3};
Decimal sum=0;
Decimal average=0;
for(Decimal eachLenght : lenght){
    sum+= eachLenght;
}
average = sum/lenght.size();
System.debug(lenght.size());
System.debug(sum);
System.debug(average);



