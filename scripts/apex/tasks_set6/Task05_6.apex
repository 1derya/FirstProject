/**
List<String> heroList = new List<String>{'Superman', 'Batman', 'Spiderman', 'Iron Man', 'Wonder Woman', 'Captain America', 'Iron Man', 'Iron Man', 'Green Lantern', 'Batman'};

5. Continue from above List of 10 String with some duplicates values
- Print out all indexes of 'Iron Man' in the list 
- Create another List of Integer and Store the all indexes into new
  List when looping 
- print out the size of new List. 

 */
//Task05_ set6 
List<String> heroList = new List<String>{'Superman', 'Batman', 'Spiderman', 'Iron Man', 'Wonder Woman', 'Captain America', 'Iron Man', 'Iron Man', 'Green Lantern', 'Batman'};

List<Integer> indexOfIronMan =new List<Integer>();

for (Integer i = 0; i < heroList.size() ; i++){
    if (heroList.get(i) == 'Iron Man'){
        System.debug('index is ' + i); 
        indexOfIronMan.add(i);
    }
}
 System.debug(indexOfIronMan); 
 System.debug(indexOfIronMan.size());
/*
for(String each : heroList) {
    if(each=='Iron Man')
    heroList.indexOf('Iron Man');
    System.debug('herolist.indexOf IronMan  value is : ' + index); 


    
} */
    heroList.indexOf('Jon Snow');

    //List<Integer> allIndexes = new List<Integer>();
//Integer index = 0;
for (String each : heroList) {
    if(each == 'Iron Man'){
        Integer index =heroList.indexOf('Jon Snow');
        System.debug(index); 
//System.debug('Iron Man indexes : ' + allIndexes);
    }

}


while (heroList.contains('Iron Man')) {
  heroList.remove(heroList.indexOf('Iron Man'));
}
System.debug('heroList value is : ' + heroList);



List<Integer> newHeroesList = new List<Integer>{};

for (Integer i = 0; i < heroList.size() ; i++){
    if (heroList.get(i) == 'Iron Man'){
        System.debug('Current index of Iron Man is: ' + i); 
    newHeroesList.add(i);
    }
}
System.debug('New Heroes List size is: ' + newHeroesList.size());
 
List<Integer> indexIron =new List<Integer>();

Integer count = 0 ;
for(String each : herolist) {
    if( each=='Iron Man' ){
        indexIron.add(count);
        System.debug(count); 
        
    }
    count++;
}

    System.debug(indexIron);
    System.debug(indexIron.size());

//List<String> heroList = new List<String>{'Superman', 'Batman', 'Spiderman', 'Iron Man', 'Wonder Woman', 'Captain America', 'Iron Man', 'Iron Man', 'Green Lantern', 'Batman'};    
Integer index1 = 0;
for (Integer i = 0; i < heroList.size() ; i++){
    if (heroList.get(i) == 'Iron Man'){
        System.debug('index is ' + i); 
    }
}




