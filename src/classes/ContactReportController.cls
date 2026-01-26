public class ContactReportController {
    public static List<Contact> getContacts() {
        return [SELECT Id, Name, Email FROM Contact];
    }
}