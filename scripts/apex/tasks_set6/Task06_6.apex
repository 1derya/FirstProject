/**
6. Continue from above list 
- Write a while loop to check the list contains 'Iron Man' 
- if so find index of each Iron Man and remove from the list
*/

List<String> heroList = new List<String>{
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

while (heroList.contains('Iron Man')) {
  heroList.remove(heroList.indexOf('Iron Man'));
}
System.debug('heroList value is : ' + heroList);




List<Integer> indexList = new List<Integer>();
Integer index = 0;
while (index < heroList.size()) {
  if (heroList.get(index) == 'Iron Man') {
    indexList.add(index);
  }
  index++;
}
for (Integer each : indexList) {
  heroList.remove(each);
}
System.debug(heroList);