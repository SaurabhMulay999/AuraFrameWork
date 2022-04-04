({
	inv : function(component, event, helper) {
		//getting the value of FLAG here
		alert('inside 2nd comp');
		var evt=event.getParams("FLAG");
        component.set("v.FLAG1",evt);
        console.log(evt);
	}
})
