public class Showdetails {
    
    @auraEnabled
    public static List<Account> getaccount()
    {
        return [select Id, Name, Phone, Industry from Account limit 10];
    }
    
    @auraEnabled
    public static List<Contact> getcontact()
    {
        return [select Id, LastName, Email from Contact limit 10];
    }

}
