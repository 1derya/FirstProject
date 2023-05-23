public class BirdM extends AnimalM implements MyFlyable{

    public BirdM(String name,String breed, Integer age, String size ){

    super(name, breed,age ,size);

    }

    public  void flyM(){
        System.debug(name +' is flying in the sky');   
    }

    public override void eat(){
    System.debug(name + ' is eating bird food');

    }

    public void fly(){
        System.debug(name +' is fliying'); 
        
    }

    public void chirp(){

        System.debug(name +' is chirping'); 
        
    }

    public void peck(){
        System.debug(name +' is pecking'); 
        
    }
    
}