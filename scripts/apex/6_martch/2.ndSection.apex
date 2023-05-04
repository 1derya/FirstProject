Map<Integer, String> numberName = new Map<Integer, String>{1 => 'Josh', 2 => 'Ben'};
numberName.put(3, 'Mary');

System.debug(numberName);//{1=Josh, 2=Ben, 3=Mary}

System.debug(numberName.keySet());// retrieves all the keys (unique-Set)
        //{1, 2, 3}
System.debug(numberName.values());  // retrieves all the values (can be duplicate-List)
       //(Josh, Ben, Mary)
System.debug(numberName.get(1) + ' is the value of key 1');// retrieves the value of key 1
       //Josh is the value of key 1
