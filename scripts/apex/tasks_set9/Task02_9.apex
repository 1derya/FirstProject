/**
2. Create a List of 10 String
   - get the count of String with more than 5 characters
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

List<String> newList1 = new List<String>();
Integer count1 = 0;
for (String each1 : favorites1) {
  if (each1.length() > 5) {
    newList1.add(each1);
    count1++;
  }
}
System.debug('Current value : ' + newList1.size());



