/**
6. Create a Date variable with name birthDay and assign the value that represent any date you want.
   - print out the day portion of the date (check the doc for right method from Date Class)
   - print out the month portion of the date (check the doc for right method)
   - print out the year portion of the data (check the doc for right method)
   - print out the result of checking if the year fall into leapYear (check the doc for right method)
   - print out the monthsBetween today and birthDay as number representation of how many month as Integer(check the doc)
   - print out the daysBetween today and birthDay as number representation of how many days as Integer(check the doc)
 */
 Date birthDay = date.newInstance(1967, 8, 2);
System.debug('the day portion of the date is ' + birthDay.day());
System.debug('month of the birthday value is : ' + birthday.month()); 
System.debug('year of the birthday value is : ' + birthDay.year());
System.debug(
  'Is the birthDay in a leap year? ' 
  + Date.isLeapYear(birthDay.year())
);
System.debug(
  'the monthsBetween today and birthDay is ' 
  + birthDay.monthsBetween(Date.today())
);
System.debug(
  'the daysBetween today and birthDay is ' 
  + birthDay.daysBetween(Date.today())
);


System.debug('------------------');

  Date birthDay = Date.newInstance(1987, 05, 19);

    System.debug('the DAY value is : '   + birthDay.day());
    System.debug('the MONTH value is : ' + birthDay.month());
    System.debug('the Year value is : '  + birthDay.year());
    
    System.debug('Is it LeapYear '  + Date.isLeapYear(birthDay.year())); 
    System.debug('How many month  ' + birthDay.monthsBetween(Date.today())); 
    System.debug('How many days  '  + birthDay.daysBetween(Date.today()) ); 

/**
The intercalary day that usually occurs every four years
is called the leap day and is created by adding 
an extra day to February. This day is added to the calendar
in leap years as a corrective measure because the Earth does
 not orbit the Sun in precisely 365 days
 */
System.debug('------------------');
Date birthDay = date.newInstance(2020, 03, 09) ;

System.debug('day of the birthday value is : ' + birthDay.day()); 
System.debug('month of the birthday value is : ' + birthDay.month()); 
System.debug('year of the birthday value is : ' + birthDay.year()); 

System.debug('isleap year : ' + Date.isLeapYear(birthDay.year())); 

System.debug ('months between today and birthday: ' + birthDay.monthsBetween(Date.today())); 

System.debug ('months between today and birthday: ' + birthDay.daysBetween(Date.today())); 
