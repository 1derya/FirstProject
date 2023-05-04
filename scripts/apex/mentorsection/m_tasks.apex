//Q2-Write a program that can convert Miles to Km
//The output should be like ‘10 miles = 16.09 km ’

/**
Q3-Write a program that can display the selected browser
-declare a String variable called browserName
-assume that the valid browsers are: chrome, safari, edge, firefox, opera
-if the browserName does not match with the valid browsers’ names, output should be 
    ‘Invalid browser’

Show three solutions;
1-Use switch
2-Use if
3-Use ternary
 */
 String browserName='explorer';

switch on browserName{
    when 'safari','opera','chrome','edge','firefox'{
        System.debug(browserName);
    }
    when else{
        System.debug('Invalid browser');
    }
}

if(browserName=='opera'||browserName=='safari'||browserName=='edge'||
browserName=='chrome'||browserName=='firefox'){
    System.debug(browserName);
}else{
     System.debug('Invalid browser');
}


String result=(browserName=='safari')? browserName : (browserName=='opera')? browserName :
(browserName=='edge')? browserName : (browserName=='firefox')? browserName : (browserName=='chrome')?
browserName : 'Invalid Browser';

System.debug(result);
/**
Q4-With a variable named size given, write a program that can display the price and calories of cappuccino as displayed below.
Valid sizes are tall, grande and venti and their prices and calories  are

Tall: price is $3.69
90 calories

Grande: price is $3.99
120 calories

Venti: price is $4.29
150 calories

If the size is invalid than the output should be ‘Invalid Size’

Solution 1: use if statement
Solution 2: use switch statement
Solution 3: use ternary
 */
 String size='grande';

if(size=='venti'){
    System.debug(size+':price is $4.29 \n150 calories');
}else if(size=='tall'){
    System.debug(size+':price is $3.69 \n90 calories');
}else if(size=='grande'){
    System.debug(size+':price is $3.99 \n120 calories');
}else{
    System.debug('Invalid size');
}

String result;
switch on size{
    when 'venti'{
        result=size+':price is $4.29 \n150 calories';
    }
    when 'tall'{
        result=size+':price is $3.69 \n90 calories';
    }
    when 'grande'{
        result=size+':price is $3.99 \n120 calories';
    }
    when else{
        result='Invalid size';
    }
}
System.debug(result);


result= (size=='venti')? size+':price is $4.29 \n150 calories' :
(size=='grande')? size+':price is $3.99 \n120 calories' :
(size=='tall')? size+':price is $3.69 \n90 calories': 'Invalid size';

System.debug(result);

//Q6- Write a program that can return the sum of odd numbers between 1 to 100

//sum of odd numbers between 1-100

Integer sum=0;

for(Integer i=1;i<100;i+=2){
    //sum=sum+i;
    sum+=i;
}

System.debug(sum);

//sum of even numbers between 1-100

Integer sum2=0;

for(Integer i=0;i<100;i+=2){
    sum2+=i;
}
System.debug(sum2);
Integer day=3;

//output should be Tuesday

String result= (day==1)? 'Sunday' : (day==2)? 'Monday' :
(day==3)? 'Tuesday' : (day==4)? 'Wednesday' : (day==5)? 'Thursday' : 
(day==6)? 'Friday' : 'Saturday';

System.debug(day+'.day of the week is '+result);

// DHAIRYA 22 MARCH

trigger UpdateOwnersOnCase on Case (before update){

    // List<Case> listToUpdate = new List<Case>(); // List to be used for DML operation
    // Boolean isRun = false; // Handling recursion inside triggers
    // System.debug('Recursion --> ' + isRun);
    // For loop on the new case records
    for(Case objCase : Trigger.new){

        // Condition to check if the case status of the new records
        // that are entering into the trigger are new or working
        // userInfo.getUserId(); => this helps to get the current logged in user id
        //SCENARIO 1
        if(objCase.Status == 'New' || objCase.Status == 'Working'){
           // Case updateCase = new Case(Id = objCase.Id);
           // System.debug('Current user logged in: ' + userInfo.getUserId())
           objCase.ownerId = userInfo.getUserId();     // If the Case meets the condition, set the Case Owner ID to the current user
           //updateCase.ownerId = userInfo.getUserId();
           //listToUpdate.add(updateCase);
        }
        // SCENARIO 3
        if(objCase.Status == 'New' && objCase.Status != 'Working' && objCase.Subject.contains('Cydeo')){
            objCase.Status = 'Working';
        }



    }

    // if(listToUpdate != null && !listToUpdate.isEmpty() && isRun == false){
    //     UPDATE listToUpdate;
    //     isRun = true;
    // }
}

trigger UpdateOwnersOnCase on Case (before update) {

    for(Case objCase : Trigger.new){
        //STARTING OF THE LOOP
        if(objCase.Type!='Electrical'){
            //SCENARIO 1
            if(objCase.Status == 'New' || objCase.Status == 'Working'){
                objCase.ownerId = userInfo.getUserId();
            }

            //SCENARIO 3
            if(objCase.Status == 'New' && objCase.status!='Working' && objCase.Subject.contains('Cydeo')){
                objCase.Status = 'Working';
            }
        }
    }
}

//Scenario 1:
//Update the case owner to the current logged in user if the user selects any of these picklist values (New OR Working).

//Scenario 3:
//If the subject of case contains "Cydeo" then update the status of case to Working only if the status is New, if the status is not equals to New then do not update the status field of case object.


