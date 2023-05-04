/**
6. Write an Apex code that create List or Array of 5 String values
   - add the word sf+index at the end of each element
   - {'Anakin','Obivan','Yoda','Windu','Ahsoka'} => 
   - {'Yoda sf1' 'Anakin sf2','Obivan sf3','Windu sf4','Ahsoka sf5'}
 */

String[] starWars = new String[]{
  'Anakin',
  'Obivan',
  'Yoda',
  'Windu',
  'Ahsoka'
};
String[] indexOfSW = new String[0];
Integer i=0;
for(String each : starWars) {
String listSW= each + ' sf' +  i;
indexOfSW.add(listSW);
i++;
}
System.debug('The result is: ' + indexOfSW);

//integer count =0;
for(Integer index =0; index<starwars.size()-1; index++){
    starWars.set(index, starWars.get(index)+' sf'+index);
}
System.debug(starWars);


/*6. Write an Apex code that create List or Array of 5 String values
   - add the word sf+index at the end of each element
   - {'Anakin','Obivan','Yoda','Windu','Ahsoka'} => 
   - {'Yoda sf1' 'Anakin sf2','Obivan sf3','Windu sf4','Ahsoka sf5'} */

List<String> strList = new List<String>{
  'Anakin',
  'Obivan',
  'Yoda',
  'Windu',
  'Ahsoka'
};

for(Integer i=0; i<strList.size() ;i++) {
  strList[i]=strList[i]+ ' sf'+i; 
}

System.debug(strList); 