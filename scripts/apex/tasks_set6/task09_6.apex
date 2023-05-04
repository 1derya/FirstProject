/**
9. Create an Boolean Array with 10 elements and 
   count the number of true value
 */

Boolean[] myBoolean = new Boolean[10];
myBoolean[0] = true;
myBoolean[1] = false;
myBoolean[2] = true;
myBoolean[3] = true;
myBoolean[4] = false;
myBoolean[5] = true;
myBoolean[6] = false;
myBoolean[7] = false;
myBoolean[8] = true;
myBoolean[9] = false;

Integer i = 0;
for(Boolean each : myBoolean) {
   if(each == true){
    i++;
   }
}
    System.debug('The count of number of True value is: ' + i);


Boolean[] trueOrFalse = new Boolean[10];
trueOrFalse[0]=true;
trueOrFalse[1]=true;
trueOrFalse[2]=true;
trueOrFalse[3]=true;
trueOrFalse[4]=false;
trueOrFalse[5]=true;
trueOrFalse[6]=false;
trueOrFalse[7]=true;
trueOrFalse[8]=true;
trueOrFalse[9]=false;

Integer count=0;

for(Boolean each : trueOrFalse){
    if (each == true){
        count++;
    }
}
System.debug(count);
