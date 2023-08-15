global class BirthdayEmailBatch implements Database.Batchable<Contact> {
    global Database.QueryLocator start(Database.BatchableContext BC) {
        // Query to get contacts whose birthday is today
        Date today = Date.today();
        String query = 'SELECT Id, FirstName, LastName, Email FROM Contact WHERE Birthdate = :today';
        return Database.getQueryLocator(query);
    }
    
    global void execute(Database.BatchableContext BC, List<Contact> scope) {
        List<Messaging.SingleEmailMessage> emailList = new List<Messaging.SingleEmailMessage>();
        for (Contact contact : scope) {
            // Create the email body and subject
            String subject = 'Happy Birthdate ' + contact.FirstName + ' ' + contact.LastName + '!';
            String body = 'As Silverline family, we wish you a very happy birthday and send you best wishes for much happiness in your life!';
            
            // Create the email message
            Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
            email.setToAddresses(new List<String>{contact.Email});
            email.setSubject(subject);
            email.setPlainTextBody(body);
            emailList.add(email);
        }
        // Send the email messages
        Messaging.sendEmail(emailList);
    }
    
    global void finish(Database.BatchableContext BC) {
        // Perform any post-processing here if needed
    }
}


// Schedule the batch job to run daily at midnight
String jobName = 'BirthdayEmailBatchJob';
String cronExp = '0 0 0 * * ?'; // Every day at midnight
System.schedule(jobName, cronExp, new BirthdayEmailBatch());


/**
 * public class BirthdayEmailScheduler {
    public static void scheduleBirthdayEmails() {
        // Schedule the batch job to run daily at 1 AM
        String cronExpression = '0 0 1 * * ?';
        System.schedule('Birthday Email Job', cronExpression, new BirthdayEmailBatch());
    }
}

 */

