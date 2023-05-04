/**
3. Write an Apex code to create an List of Strings with 6 items 
    - if this list does not contains 'jon snow'
        - then insert 'jon snow' at index 4
    - if it does
        - remove 'jon snow' and insert it again at index 4
 */

 //Task03 set6
 List<String> userList = new List<String>{'Jon Snow','Tom Hanks','Malala','Superman','Elvis ', 'Picasso'};

    if(!(userList.contains('Jon Snow'))){
      userList.add(4,'Jon Snow');
      System.debug(userList); 
    }
    else if(userList.contains('Jon Snow')){
     userList.remove(userList.indexOf('Jon Snow'));
      System.debug(userList);  
     userList.add(4,'Jon Snow');
     System.debug(userList);    
    }
    
    //System.debug('userList value is : ' + userList);   

   //userList.remove(userList.indexOf('Jon Snow'));
 

//userList.indexOf('Jon Snow')

/* List<String> names = new List<String>{
  
  'Sansa',
  'Deyneris',
  'Serseya',
  'Joffrey',  
  'Hodor',
  'Bran',
  
};

if (!names.contains('jon snow')) {
  names.add(4, 'jon snow');
  
} else {
  Integer IndexOfJohnSnow = names.indexOf('jon snow');
  names.remove(IndexOfJohnSnow);
  System.debug(names); 
  //names.add(4, 'Jon Snow is back');
}

System.debug('Names value is : ' + names);

 */
 List<String> names1 = new List<String>{
  'Ada',
  'Naz',
  'Jon Snow',
  'Nil',
  'Han',
  'Can',
  'Eda'
};

if (!(names1.contains('Jon Snow'))) {
  names1.add(4, 'Jon Snow');
  System.debug(names1);
} else {
  names1.remove(names1.indexOf('Jon Snow'));
  names1.add(4, 'Jon Snow');
}
System.debug('Names value is :  ' + names1); 





 

    


 