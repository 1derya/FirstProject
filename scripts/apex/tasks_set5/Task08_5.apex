/*

8. Write a program that create a list of strings and
 print the values that are not equal to
 "Salesforce", using a for loop and the continue keyword.
*/

List<String> trailheadList = new List<String> {'Trail', 'Module', 'Salesforce', 'Admin' , 'App' , 'Lead' , 
'Object' , 'User' , 'Salesforce', 'Account'};

for(Integer i = 0; i < trailheadList.size(); i++){
    if(trailheadList.get(i) == 'Salesforce'){
        continue;
    }
    System.debug (trailheadList.get(i));
}

//for each

for (String eachWord : trailheadList) {
  if (eachWord == 'salesforce') {
    continue;
  }
  system.debug(eachWord);
}