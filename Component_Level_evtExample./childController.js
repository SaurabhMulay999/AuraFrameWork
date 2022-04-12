({
	Save : function(component, event, helper) {
        
        var action=component.get("c.create");
        
        var contactDetails=component.get("v.C1");
		
        action.setParams({'c':contactDetails});
        
        action.setCallback(this,function(res)
                           {
                               var state=res.getState();
                               if(state=='SUCCESS')
                               {
                                   var result=res.getReturnValue();
                                   alert(result);
                               }
                               if(res!=='Error')
                               {
                                   var evt=component.getEvent("contact");
                                   //here we have to use the name that we have registered the event as in the child
                                   evt.setParams({'C1':contactDetails});
                                   evt.fire();
                               }
                           });
        
        $A.enqueueAction(action);
	}
})
