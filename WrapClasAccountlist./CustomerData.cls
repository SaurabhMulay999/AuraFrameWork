public class customerdata {
    @auraEnabled 
    public static List<data> getList()
    {
        //Account acc=new Account();
        List<data> lst=new List<data>();
        for(Account acc :[select Id, Name, Phone,Industry from Account Limit 10])
        {
            data d=new data();
            d.Name=acc.Name;
            d.Phone=acc.Phone;
           	d.Industry=acc.Industry;
            lst.add(d);
            
        }
        return lst;
    }
    
    public class data{
        
        
       	@auraEnabled public string Name;
        @auraEnabled public string Industry;
        @auraEnabled public string Phone;
        @auraEnabled public string Stat;
    
    }

}
