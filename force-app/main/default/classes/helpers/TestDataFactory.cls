
//Create a method to create Test Data with below signature in Separate Class TestDataFactory
/**
 * Create a list of case records for testing purposes.
 * @param numCases The number of cases to create
 * @param priority The priority to set for all cases
 * @return A list of case records
 */
  public class TestDataFactory {
    public static List<Case> createCases(Integer numCases, String priority) {
      List<Case> casesForTest = new List<Case>();
      for (Integer i = 1; i <= numCases; i++) {
        Case c = new Case();
        c.Priority = priority;
        c.Subject = 'Parent case '+ i;
        casesForTest.add(c);
      }
  
      //insert casesForTest;
      return casesForTest;
    }
  }