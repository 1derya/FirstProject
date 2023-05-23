
List<ElectricCar> carLst = new List<ElectricCar>() ; 
carLst.add(  new ElectricCar('Tesla X', 65000 , 10)  ) ; 
carLst.add(  new ElectricCar('Tesla Y', 55000 , 9)   ) ; 
carLst.add(  new ElectricCar('Tesla 3', 75000 , 11)  ) ; 

Dealership d1 = new Dealership('Tesla D', carLst);
d1.showCars(); 

System.debug('d1.getCarCount()  value is : ' 
        + d1.getCarCount() );


d1.discountAllCars(5000); 
d1.showCars(); 

/**
model is Tesla X and price is 65000
model is Tesla Y and price is 55000
model is Tesla 3 and price is 75000
d1.getCarCount()  value is : 3
model is Tesla X and price is 60000
model is Tesla Y and price is 50000
model is Tesla 3 and price is 70000
 */

// Create another Dealership object with 2 ElectricCars

List<ElectricCar> carLst2 = new List<ElectricCar>() ; 
carLst2.add(  new ElectricCar('Audi Q5', 55000 , 8)  ) ; 
carLst2.add(  new ElectricCar('Audi e-tron', 75000 , 11)   ) ; 

Dealership d2 = new Dealership('Audi Virgina', carLst2 );

d2.showCars(); 
System.debug('d2.getCarCount() value is : ' 
                            + d2.getCarCount() );
d2.discountAllCars(10000); 
d2.showCars(); 

/**
model is Audi Q5 and price is 55000
model is Audi e-tron and price is 75000
d2.getCarCount() value is : 2
model is Audi Q5 and price is 45000
model is Audi e-tron and price is 65000
 */