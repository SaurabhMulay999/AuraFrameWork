({
    Show: function(component, event, helper) {
        
        var action1=component.get("c.getAccountList");
        
        var action2=component.get("c.getContactList");
        
        var cols=[{label:'AccountName',fieldName:'Name',type:'text'},{label:'Phone',fieldName:'Phone',type:'text'},
                 {label:'Industry',fieldName:'Industry',type:'text'}]
        
        var cols1=[{label:'LastName',fieldName:'LastName',type:'text'},{label:'Email',fieldName:'Email',type:'text'}]
        
        component.set("v.Actcols",cols);
        component.set("v.Contcols",cols1);
        
        action1.setCallback(this,function(r){
            var state=r.getState();
            if(state=='SUCCESS')
            {
                var result=r.getReturnValue();
                component.set("v.Act",result);
                
            }
        });
        action2.setCallback(this,function(r){
            var state=r.getState();
            if(state=='SUCCESS')
            {
                var result=r.getReturnValue();
                component.set("v.Cont",result);
                
            }
        });
        
        $A.enqueueAction(action1);
         $A.enqueueAction(action2);
    },
    Clear: function(component,helper, event)
    {
        component.set("v.Act",null); component.set("v.Cont",null);
    },
    
    
    
     Save: function(component,helper, event)
    {
      	var account=component.get("v.AccRecord");
        var action=component.get("c.createAccount");
        action.setParams({"acc":account});
        action.setCallback(this, function(r){
            var state=r.getState();
            if(state=='SUCCESS')
            {
                var result=r.getReturnValue();
                alert(result);  //return value is ID as per our class return type Formatter string
            }
            else{
                alert('penetration fail');
            }
            
        })
        $A.enqueueAction(action);
    },
    
    
    
    
    
     clear1: function(component,helper, event)
    {
        component.set("v.AccRecord",null);
    },
    
    
    searchData: function(component,helper, event)
    {
        var ky=component.get("v.strkey");
        var action=component.get("c.search");
         component.set("v.flag",true);
        action.setParams({"strIndustry":ky});
        action.setCallback(this, function(r){
            var state=r.getState();
            if(state=='SUCCESS')
            {
                var result=r.getReturnValue();
                component.set("v.AccRecord1",result);
                
            }
            else{
                var result=r.getReturnValue();
                alert(result);
            }
            
        });
        $A.enqueueAction(action);
       
   
        
    },
})
