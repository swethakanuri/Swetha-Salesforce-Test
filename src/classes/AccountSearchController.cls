public class AccountSearchController {
    public static List<Account> searchAccounts() {
        String searchKey = ApexPages.currentPage().getParameters().get('name');
        // Dynamic SOQL injection vulnerability
        String query = 'SELECT Id, Name FROM Account WHERE Name LIKE \'%' + searchKey + '%\'';
        List<Account> result = Database.query(query);
        return result;
    }
}