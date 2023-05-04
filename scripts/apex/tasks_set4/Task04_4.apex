/**
4. Write a program that store 10 Long(data type) values into List of Long 
   (it should be combination of positive and negative numbers) 

   print out the sum of positive numbers 
   print out the count of positive numbers 
   print out the count of negative numbers 
 */
/** 
List<Long> longnumber = new List<Long>{1111000L, -222OOL, 12OO333L, 888776L, 3433339L, -1999999L, -45678900L,
                                       78965439, -2333344L, 34555555L,
}; 
Long sumOfOddNums = 0;
for(Long eachpozitif : longnumber ){
    if(eachpozitif>=0){
        sumOfOddNums += eachpozitif;
    }

}
System.debug(sumOfOddNums);
*/
List <Long> caseNum = new List <Long> {4512445,-5421871,686513684,-15651335,658414635,-544135,654433135,56454,-5454121,6456464};
//    print out the sum of positive numbers 
Long sum=0;
for (Long each:caseNum){
    if(each>=0){
     sum+=each;
    }
}
System.debug(sum);

//    print out the count of positive numbers 
//    print out the count of negative numbers 

Integer countPositive=0;
Integer countNegative=0;

for(Long each:caseNum){
if(each>=0){
    countPositive++;
} else {
    countNegative++;  
}
}
System.debug(countPositive);
System.debug(countNegative);
