/*6. Inspired by above code
/*6. Inspired by above code, 
   - Write an Apex code that 
     - store 10 random Integer values between 1-100 into a List of Integer
   - print out the value 
   - get the sum of the numbers 
   - get the average of the numbers */

List<Integer> list1 = new List<Integer>();

Integer sum=0;
Integer num;

for(Integer i=0; i<10 ;i++) {
    num=(Math.random()*100).intValue();
    list1.add(num);
    sum+=num;
}

System.debug(list1); 
System.debug('sum '+sum);
System.debug('average '+sum/10); 

System.debug('------------------');

Integer sum = 0;
List<Integer> numList = new List<Integer>();
for (Integer i = 0; i < 10; i++) {
  Double dbl = math.random() * 100;
  Integer num = dbl.intValue();
  numList.add(num);
  sum += num;
}
System.debug('num value is : ' + numList);
System.debug('sum value is : ' + sum);
Integer average = sum / numList.size();
System.debug('average value is : ' + average);

System.debug('------------------');

Double randomD = 0;
Integer randomDI = 0;

List<Integer> numList = new List<Integer>();

for (Integer i = 0; i < 10; i++) {
  randomD = Math.random() * 100;
  numList.add(randomDI = randomD.intValue());
}

System.debug(numList);

Integer sum = 0;
for (Integer each : numList) {
    sum+=each;
}
System.debug(sum); 

Integer average = sum / numList.size();
System.debug('Average is ' + average); 

