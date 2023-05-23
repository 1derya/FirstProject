BirdM b1 = new BirdM('Tweety', 'parakeet',1, 'small');
CatM c1  = new CatM('Tom','Tabby',4,'medium' );
Lion l1  = new Lion('Simba', 'Mountain Lion', 5, 'large');
//Animal a1 = new Animal('Dog', 'Husky', 3, 'Large');
//we can not creat animal object because its abstract now
//abstract class can not create object
b1.eat();
b1.flyM();
c1.eat();
l1.eat();

// Bird b1 = new Bird('Tweety', 'parakeet', 1, 'small');

// b1.fly();
// b1.chirp();
// b1.eat();

AnimalM a1 = new CatM('Hafiz', 'Persion',6,'large');
//a1.meow();//compile error because referans type has no meow
