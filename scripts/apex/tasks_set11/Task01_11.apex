/**
1. Create a Map<String, Integer> to store group name and member count
   -  Add 5 items into this Map 
   -  Check if there is a group called Apex Soldiers 
      -  print out the result in boolean 
   -  Check if there is a group called Winterfell Vacation
      -  if so , store the value into a Variable called vMemberCount
         -  remove this group from the map 
         -  add new item to the map with below key-value pair
            -  Winterfell Coders as key , value of vMemberCount as value
   -  Check if there is a group with 10 members
      -  if so , decrease the value to 9 
 */
Map<String, Integer> groupMap = new Map<String, Integer>();
   groupMap.put('Group Member 1',10);
   groupMap.put('Group Member 2',20 );
   groupMap.put('Group Member 3',30);
   groupMap.put('Apex Soldiers',40);
   groupMap.put('Winterfell Vacation',50);
  
System.debug(groupMap.containsKey('Apex Soldiers'));

if(groupMap.containsKey('Winterfall Vacation')){
    Integer vMemberCount = groupMap.get('Winterfell Vacation');
    groupMap.remove('Winterfall Vacation');
    groupMap.put('Winterfall Vacation', vMemberCount);
}
System.debug(groupMap); 
List<String> newKeys = new List<String>(groupMap.keySet());

System.debug('newkeys value is : ' + newkeys);                                                                                                                                          
      //newkeys value is :(Group Member 1, Group Member 2, 
      //          Group Member 3, Apex Soldiers, Winterfell Vacation)
for(String eachKey : newKeys){
    if (groupMap.get(eachKey)==10){
        groupMap.put(eachKey,9);

    }
}
System.debug(groupMap); 

/**
for (String eachKey : groupMap.keySet()) {
  if (groupMap.get(eachKey) == 10) {
      groupMap.put(eachKey, 9);
  }
}
System.debug(groupMap);
 */
