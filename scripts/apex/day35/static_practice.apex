










Helper.printOneToN(4);

System.debug('Helper.sumOfOneToN(100) value is : ' + Helper.sumOfOneToN(100));

System.debug('Helper.sumOfOneToN(500) value is : ' + Helper.sumOfOneToN(100));










// System.debug('Calculator.add(100,200) value is : ' + Calculator.add(100,200));

// System.debug('Calculator.add(9.5, 21.5) value is : ' 
//                     + Calculator.add(9.5,21.5)  );

// System.debug('Calculator.subtract(100,70) value is : '
//                      + Calculator.subtract(100,70));

// System.debug('Calculator.multiply(100,70) value is : '
//                      + Calculator.multiply(100,70));

// System.debug('Calculator.divide(100,2) value is : '
//                      + Calculator.divide(100,2));

// System.debug('Calculator.divide(100,0) value is : '
//                      + Calculator.divide(100,0) );



// System.debug(Fruit.count);
// Fruit f1 = new Fruit();
// System.debug(Fruit.count);
// Fruit f2 = new Fruit();
// System.debug(Fruit.count);
// Fruit f3 = new Fruit();
// System.debug(Fruit.count);




// if the method is not trying to manipulate instance variable, you can always make it static for easy usage.
// for example the methods we created for Person class to showAge  or changeName , purpose of these methods are to access or modify the state|attributes|fields of the object in question, so it must be instance method not static.
// Everything we have been practicing past couple days are not. 
// They just meant to be a reusable method we want to use elsewhere and does not need to do anything with instance fields so for the sake pf simplicity , it can all be static. 