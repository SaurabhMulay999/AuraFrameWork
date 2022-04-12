public class ContactInfo {
    
    @auraEnabled
    public static string create(contact c)
    {
        try{
            insert c;
            return c.Id;
        }
        catch(exception e)
        {
            return e.getMessage();
        }
    }

 
}
