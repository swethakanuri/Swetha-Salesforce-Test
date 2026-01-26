public class ContactFetcher {
    public static List<Contact> getAllContacts() {
        return [SELECT Id, Email FROM Contact];
    }
}