public class CoffeeMaker {
  public String brand;
  public Integer capacity;

  //create a method called makeCoffee
  //it should be available everywhere
  //it does not need any extra data whwen being called
  //it does not return any value
  //it needs an object while being called

  public void makeCoffee() {
    System.debug('Add water..');
    System.debug('Add Coffee..');
    System.debug('place the Cup..');
    System.debug('press the button..');
    System.debug('Now Enjoy your coffee');
  }
  // create a method called setTimer
  // it should be available eveywhere
  // it needs an object while being called(not static)
  // it does not return any value
  // it accept whole number as minute
  // and print out setting timer for xx minutes
  //Integer num hereiis called method parameter
  //it means when the method is being called
  //the caller of the method must provide
  public void setTimer(Integer num) {
    System.debug('setting timer for ' + num + ' minutes ');
  }
   
   // create apublic void method called clean
   //it does not have any method parameter
   //print the message :cleaning the coffee maker.
   // in your anon-apex, call the method
   public void clean(){
     System.debug('cleaning the coffee maker.'); 
       
   }
    
  // Create a public void method called addWater
  // it expect the caller to pass Integer value (it has Integer method parameter)
  // print the message : Adding XX ounces of water (replace the XX with what caller passed)
  // in your anon-apex, call the method
  public void addWater(Integer num){
    System.debug('Adding ' + num + ' ounces of water'); 

  }

  // Create a public void method called addFlavor
  // it expect the caller to pass Integer value (it has String method parameter)
  // print the message : Adding XX Flavor to the Coffee
  // in your anon-apex, call the method
  public void addFlavor(String flavor){
  System.debug('Adding' + flavor + 
               ' Flavor to the Coffee'); 
}
   //






   public void setStrength(String Strength, Integer scoops){
    System.debug('setting the strength of coffee to ' 
                    + strength + ' with  '+ scoops
                    + ' scoop of coffee bean' );     
  }

   }















}
