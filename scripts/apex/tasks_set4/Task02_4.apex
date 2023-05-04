/**
2. Write a program that store the even numbers 
from 1 to 20 into List of Integer

then write an apex code to get the sum of all items 
in the list. 
*/


Integer totalevennum=0;
List<Integer> evenNum =new List<Integer>();
    for(Integer evennumber = 1;evennumber<20;evennumber+=2){
        evenNum.add(evennumber);
        totalevennum += evennumber;
}
System.debug(evenNum);
System.debug(totalevennum); 