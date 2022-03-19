public class DML
{

    @auraEnabled
    public static List<Account> Collect()
    {
      return [select Id, Name,Phone, Industry from Account];
    
    }
}
