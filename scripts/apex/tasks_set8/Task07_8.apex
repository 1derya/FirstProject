/*7. Create a List of 10 String with your own values
   - create an Integer variable called randomIndex
   - assign the value to random Integer between (between 0-9)
   - use above index to print out the value at that index
   - (wait did we just crack how lottery system work?)
 */

List<String> strList = new List<String>{
  'Admin',
  'Architect',
  'Tester',
  'QA',
  'Analyst',
  'Developer',
  'App Builder',
  'PO',
  'Scrum Master',
  'Consultant'
}; 


Integer randomIndex=(Math.random()*10).intValue(); 
System.debug(randomIndex); 
System.debug(strList[randomIndex]); 
//strList.get(randomIndex)

/* //Task 7
 List <String> colors = new List <String> {'black' , 'blue', 'red','yellow', 'green', 'white', 'purple' ,'pink',
 'silver', 'brown'};
Double random = Math.random()*9;
Integer randomIndex1 = random.intValue();

System.debug(colors.get(randomIndex1)); 
 //question about my solution  . if random = Math.random*10, does it mean that Random Index can be 10 as well. which doesn't meet our condition 0-9 ?
      //answer Multiply by 9 and it will have 0-9 range */
/*
List<String> pilots = new List<String>{
  'Rooster',
  'Maverick',
  'Iceman',
  'Cyclone',
  'Phoenix',
  'Payback',
  'Fanboy',
  'Hangman',
  'Omaha',
  'Coyote'
};

Integer randomIndex = 0;
Double dbl = Math.random() * 10;
randomIndex = dbl.intValue();
System.debug('Random Index value is : ' + pilots.get(randomIndex));
*/ 







