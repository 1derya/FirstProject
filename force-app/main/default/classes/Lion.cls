public  class Lion extends AnimalM{

    public Lion(String name,String breed, Integer age, String size ){

     super(name, breed,age ,size);
   }

    public override void eat(){
    System.debug(name + ' is eating lion food');

    }

    public void roar(){
        System.debug(name +'is roearing'); 
        
    }

    public void hunt(){

        System.debug(name +'is hunting'); 
        
    }

  
        
    
    
}