/**
10. Write a program that takes a list of integers
that represent the amounts of money spent by a set
of users, and calculates the number of users who
spent more than a certain amount(like 10000) of money.
in another word, create a list of Integer and get 
the count of numbers that over 10000 
*/
List<Integer> amounts = new List<Integer> {10001,5000,6000,9000,11500,16300,20100};

Integer user=0;
for(Integer each:amounts){
    if(each>10000){
        user++;
    }
    }
    System.debug(User);
/**

List<Integer> amount = new List<Integer>{1000,560,870,2050,980,1200,400,560};
List<Integer> bigAmount = new List<Integer>();

for(Integer each : amount){

    if(each>700){
       bigAmount.add(each); 
    }
}
System.debug(bigAmount);
 */
Integer spentMore = 0;
List<Integer> spended = new List<Integer>{300, 500, 900, 1100, 1200, 1600, 2000, 2500};
for(Integer eachAmount : spended){
    if(eachAmount>1000){
        spentMore++;
    }
}
System.debug('Number of users who spent more than $1000 is : ' + spentMore);