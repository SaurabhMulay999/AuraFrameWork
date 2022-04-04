({
	ClickHere : function(component, event, helper) {
        //get the event first
        alert('insidde component 1');
        var evt=component.getEvent("FIRSTEVT");
        evt.setParams({"FLAG":true});
        evt.fire();
        
		
	}
})
