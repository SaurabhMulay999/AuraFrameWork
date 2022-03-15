public class Customer_Details {
    @auraEnabled 
    public static customer_info searchAccount(string strIndustry)
    {
        customer_info info=new customer_info();
        try{
            Account obja =new Account();
            obja=[select ID,Name,Phone,Industry from Account where Industry=:strIndustry limit 1];
            info.accName=obja.Name;
            info.accPhone=obja.Phone;
            info.Industry=obja.Industry;
            info.status='SUCCESS';
            
            
        }
        catch(Exception e){
            info.status='Exception triggered'+e.getMessage();
        }
        return info;
    }
    
    public class customer_info{
       @auraEnabled public string accName;
       @auraEnabled  public string accPhone;
       @auraEnabled  public string Industry;
       @auraEnabled  public string status;
        
    }
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
