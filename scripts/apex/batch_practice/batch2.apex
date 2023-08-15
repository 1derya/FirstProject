public class BirthdayEmailBatch implements Database.Batchable<SObject> {
    public Database.QueryLocator start(Database.BatchableContext context) {
        // Query contacts with birthdays matching today's date
        Date today = Date.today();
        return Database.getQueryLocator([
            SELECT Id, FirstName, LastName, Email
            FROM Contact
            WHERE DAY_IN_MONTH(Birthday__c) = :today.day()
            AND MONTH(Birthday__c) = :today.month()
        ]);
    }

    public void execute(Database.BatchableContext context, List<Contact> contacts) {
        List<Messaging.SingleEmailMessage> emailsToSend = new List<Messaging.SingleEmailMessage>();
        
        // Iterate through the contacts and create personalized emails
        for (Contact contact : contacts) {
            String subject = 'Happy Birthdate ' + contact.FirstName + ' ' + contact.LastName + '!';
            String body = 'As Silverline family, we wish you a very happy birthday and send you best wishes for much happiness in your life!';
            
            // Create the email message
            Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
            email.setToAddresses(new List<String>{ contact.Email });
            email.setSubject(subject);
            email.setPlainTextBody(body);
            emailsToSend.add(email);
        }
        
        // Send the emails
        if (!emailsToSend.isEmpty()) {
            Messaging.sendEmail(emailsToSend);
        }
    }

    public void finish(Database.BatchableContext context) {
        // You can add any finishing logic here if needed.
    }
}


public class BirthdayEmailScheduler {
    public static void scheduleBirthdayEmails() {
        // Schedule the batch job to run daily at 1 AM
        String cronExpression = '0 0 1 * * ?';
        System.schedule('Birthday Email Job', cronExpression, new BirthdayEmailBatch());
    }
}

BirthdayEmailScheduler.scheduleBirthdayEmails();
