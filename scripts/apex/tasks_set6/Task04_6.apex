/**

4. Write an Apex code to create List of 10 String with some duplicates values
List<String> heroList = new List<String>{'Superman', 'Batman', 'Spiderman', 'Iron Man', 'Wonder Woman', 'Captain America', 'Iron Man', 'Iron Man', 'Green Lantern', 'Batman'};

- Find the count of times 'Iron Man' showed up 

 */
 List<String> heroList = new List<String>{'Superman', 'Batman', 'Spiderman', 'Iron Man', 'Wonder Woman', 'Captain America', 'Iron Man', 'Iron Man', 'Green Lantern', 'Batman'};

Integer count = 0;
for(String each : herolist) {
    if( each =='Iron Man' ){
        count++;
    }
}    
    System.debug('The count of "Iron Man" is : ' + count);





List<String> heroList1 = new List<String>{
  'Superman',
  'Batman',
  'Spiderman',
  'Iron Man',
  'Wonder Woman',
  'Captain America',
  'Iron Man',
  'Iron Man',
  'Green Lantern',
  'Batman'
};

Integer count1= 0 ;
for (String each : heroList1) {
  if (each != 'Iron Man') {
    continue;
    count1++;
  }
}
System.debug('count of times \'Iron Man\' showed up is ' + count1);