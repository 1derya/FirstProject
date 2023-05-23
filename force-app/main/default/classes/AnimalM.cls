 /*
      • Create a Parent class called Animal and provide 3 child classes.
    • Each class should have:
    
        ○ Attributes:
        Name, breed, size, age
        
        ○ Actions:
        Eat()
        Move()
    
        3 additional actions special to the sub class 
  */ 


public  abstract class AnimalM {
  
  public String name;
  public String breed;
  public Integer age;
  public String size;

  public AnimalM(String name,String breed, Integer age, String size ){
        this.name = name;
        this.breed = breed;
        this.age = age;
        this.size= size;
    }
  
  public abstract void eat();

  public void move(){
    System.debug(name +'is moving'); 
    
  }

}
    