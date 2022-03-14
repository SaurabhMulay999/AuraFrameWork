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
   		
        
}
})
