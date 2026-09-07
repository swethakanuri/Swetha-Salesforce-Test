@isTest
public class GreetingServiceTest {
    
    @isTest
    static void testGetGreeting() {
        // Act
        String result = GreetingService.getGreeting();
        
        // Assert
        System.assertEquals('Welcome', result, 'Greeting should return Welcome');
    }
}