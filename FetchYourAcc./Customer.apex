public class Customer {
    @auraEnabled 
    public static List<Account> getAccounts()
    {
        return [select Id, Name,Phone,Industry from Account];
        
	}

}
