({
	Invoke : function(component, event, helper) {
        var action=component.get("c.getList");
        var cols=[{label:'AccName' , fieldName:'Name', type:'text'},{label:'AccPhone' , fieldName:'Phone', type:'text'},{label:'AccIndustry' , fieldName:'Industry', type:'text'}];
        component.set("v.Col",cols);
        action.setCallback(this,function(r){
           var state=r.getState();
            if(state==='SUCCESS'){
                var result=r.getReturnValue();
                component.set("v.Acc",result);
            }
            else{
                alert('we fucked up!!!');
            }
        });
        $A.enqueueAction(action);
		
	}
})
