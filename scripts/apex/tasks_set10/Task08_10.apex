/**
8. Create a Contact variable and assign value along with below fields 
   - LastName, Birthdate
   - insert it into Salesforce 
   - check if today is the birthday of this Contact according to Birthdate field value
      - print 'It's your Birthday Today, Tada! '
      - else print 'It's not your Birthday Today'
      - Hint : birthday means the date has same month and year as Today's date
 */
Contact myContact  = new Contact();
 myContact.LastName = 'AAA';
 myContact.Birthdate = Date.newInstance(2000,01,01); 
 Email               =test@gmail.com

if (myContact.Birthdate.month() == Date.today().month()&&
    myContact.Birthdate.day() == Date.today().day()
    ){
      System.debug('it\'s your birhday ,tada!');
    }else{
      System.debug('it\'s not your birthday today'); 
    }



// Contact newContact = new Contact();
// newContact.LastName = 'Yasamaz';
// newContact.Birthdate = Date.newInstance(2001, 1, 1);
// insert newContact;
// if (
//   Date.today().month() == newContact.Birthdate.month() &&
//   Date.today().day() == newContact.Birthdate.day()
// ) {
//   System.debug('It\'s your Birthday Today, Tada!');
// } else {
//   System.debug('It\'s not your Birthday Today');
// }
