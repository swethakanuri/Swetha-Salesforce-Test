global class EmailToCaseHandler implements Messaging.InboundEmailHandler {
   global Messaging.InboundEmailResult handleInboundEmail(Messaging.InboundEmail email, Messaging.InboundEnvelope envelope) {
       Messaging.InboundEmailResult result = new Messaging.InboundEmailResult();
       try {
           // Create a new case from the email
           Case newCase = new Case();
           // Set the case subject to the email subject
           newCase.Subject = email.subject != null ? email.subject : 'No Subject';
           // Set the case description to the email body
           newCase.Description = email.plainTextBody != null ? email.plainTextBody : 'No Description';
           // Set the case origin to 'Email'
           newCase.Origin = 'Email';
           // Optional: Assign to a default contact if email address matches
           List<Contact> contacts = [SELECT Id FROM Contact WHERE Email = :email.fromAddress LIMIT 1];
           if (!contacts.isEmpty()) {
               newCase.ContactId = contacts[0].Id;
           }
           // Insert the case
           insert newCase;
           // Log success
           result.success = true;
       } catch (Exception e) {
           // Log the error
           System.debug('Error creating case: ' + e.getMessage());
           result.success = false;
       }
       return result;
   }
}