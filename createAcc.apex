public class createAcc {
    @auraEnabled
    public static string createAccount(Account acc)
    {
        try{
            //cmt
            insert acc;
            return acc.Id;
            
        }
        catch(exception e){
            return 'Fuck!!!'+e.getMessage();
        }
    }

}
