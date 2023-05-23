public  class CatM extends AnimalM{

    public CatM(String name,String breed, Integer age, String size ){

        super(name, breed,age ,size);
    }

    public override void eat(){
    System.debug(name + ' is eating cat food');

    }

    public void meow(){
        System.debug(name +' is meowing'); 
        
    }

    public void scratch(){

        System.debug(name +' is scratching'); 
        
    }

    public void sleep(){
        System.debug(name +' is sleeping'); 
        
    }
   
}