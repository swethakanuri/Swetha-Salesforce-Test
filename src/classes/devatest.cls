@isTest
public class devatest {
    @isTest
    private static void warmTempTest(){
        Decimal res = deva.FtoC(70);
        system.assertEquals(21.11, res);
    }
}