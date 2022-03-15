({
	Save : function(component, event, helper) {
        var account=component.get("v.AccRecord");
        var a=component.get("v.Name");
        var b=component.get("v.Phone");
        var c=component.get("v.Industry");
        var action=component.get("c.createAccount");
        action.setParams({"acc":account});
        action.setCallback(this, function(res){
            var state=res.getState();
            if(state='SUCCESS')
            {
                var result=res.getReturnValue();    
                alert(result);
            }
            else{
                alert('FUCK!!!');
            }
            
        });
        $A.enqueueAction(action);
	},
    clear :function(component,event,helper){
    	component.set("v.AccRecord",null);
   		
        
},
    SearchData:function(component, event, helper)
    {
        var key=component.get("v.strey");
        var action=component.get("c.searchAccount");
        action.setParams({"strIndustry":key});
        action.setCallback(this,function(response){
            var state=response.getState();
            if(state=='SUCCESS')
            {
                var result=response.getReturnValue();
                component.set("v.AccRecords",result);
                component.set("v.Flag",true);
                
            }else{var result=response.getReturnValue();
                 alert(result);}
        });
        $A.enqueueAction(action);
    }
})
