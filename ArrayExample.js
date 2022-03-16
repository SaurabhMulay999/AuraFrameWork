({
	Show : function(component, event, helper) {
		var action=component.get("c.getAccounts");
        action.setCallback(this, function(response){
            var state=response.getState();
            if(state=='SUCCESS')
            {
                var result=response.getReturnValue();
                component.set("v.ListAcc",result);
                
            }
            else{
                aler('fucking!! error')
            }
        });
        $A.enqueueAction(action);
	},
    clear: function(component, event, helper){
        component.set("v.ListAcc",null);
    }
})
