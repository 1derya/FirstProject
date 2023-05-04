/**
3. Create a List of 10 String
   - get the count of String even character count
   - print them out
*/

List<String> favorites1 = new List<String>{
  'Meryem',
  'Hatice',
  'Fatima',
  'Safiye',
  'Ayse',
  'Sumeyye',
  'UmmuGulsum',
  'Rukiye',
  'Zeynep',
  'Sevde'
};
List<String> strList = new List<String>();

Integer count = 0;
for(String eachstr : favorites1) {

    if(Math.mod(eachstr.length(), 2) == 0){
        strList.add(eachstr);
        count++;
    }
}
    System.debug('Current value : ' + strList.size());
    System.debug('count value is : ' + count); 
    


    List<String> names = new List<String>{
  'Jon',
  'Emma',
  'Sonya',
  'Timmy',
  'Akbar',
  'Thomas',
  'Annabel',
  'Olgakuksa',
  'PeppaPig',
  'Sunny'
};
Integer count1 = 0;
for (String eachName : names) {
  if (Math.mod(eachName.length(), 2) == 0) {
    count1++;
  }
}
System.debug('Count even value is : ' + count1);