public class CustomerDetails11 {
    // we are writting the wrapper class here
    //for accounts or to show accounts
    //DOne!!!! Apologies for this kind of Design
    @auraEnabled
    public static List<wrap> getAccountList(){
        wrap w= new wrap();
        List<wrap> t= new List<wrap>();
        for(Account a: [select Id, Name, Phone, Industry from Account limit 10])
        {
            w.Name=a.Name;
            w.Phone=a.Phone;
            w.Industry=a.Industry;
            t.add(w);
        }
        return t;
        //changes 
        
    }
    
    
    //to show the contacts
    @auraEnabled
    public static List<wrap> getContactList(){
        wrap w= new wrap();
        List<wrap> t= new List<wrap>();
        for(Contact a: [select Id,LastName,Email from Contact limit 10])
        {
            w.LastName=a.LastName;
            w.Email=a.Email;
            
            t.add(w);
        }
        return t;
        
        
    }
    //this is to search account record by Industry
    @auraEnabled
    public static wrap search(string strIndustry)
    {
        wrap t=new wrap();
        try{
            Account obj=new Account();
            obj=[select Id, Name, Phone, Industry  from Account where Industry=:strIndustry limit 1];
            t.accName=obj.Name;
            t.accPhone=obj.Phone;
            t.accIndustry=obj.Industry;
            t.Status='SUCCESS';
            
        }
        catch(Exception e){
            t.Status='Exception occur'+e.getMessage();
        }
        return t;
        
    }
    //to create an accout record
    //make sure that all methods are aura enabled
    @auraEnabled
    public static string createAccount(Account acc)
    {
        try{
        insert acc;
        return acc.Id;
    }
     catch(Exception e)
     {
         return 'Cannot able to insert '+e.getMessage();
  
        
    }
    }
    //hopefully no errors
    
    
    public class wrap{
        
        @auraEnabled public String Name; 
        @auraEnabled public String Phone;
        @auraEnabled public String Industry;
        @auraEnabled public String LastName;
        
        @auraEnabled public String Email; 
        @auraEnabled public String Status;
        @auraEnabled public String accName;
        @auraEnabled public String accPhone;
        @auraEnabled public String accIndustry;
        
    }

}
