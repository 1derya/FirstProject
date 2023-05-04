/*4. Write a program that store List of Double 
    with 10 items 
    break out of the loop if any number is between
    50.5 and 99.99 
*/
List<Double> doubleList = new List<Double> {1.11, 2.22, 3.33, 4.44, 51.05, 
80.05, 100.00, 8.888, 90.99,10.00};

for(Integer i =0 ; i< doubleList.size(); i++){
    if(doubleList.get(i) >= 50.5 && doubleList.get(i) <=99.99){
        break;
    }
        System.debug (doubleList.get(i));
    }