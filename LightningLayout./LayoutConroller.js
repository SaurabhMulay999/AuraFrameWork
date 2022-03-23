({
	Show : function(component, event, helper) {
		var action=component.get("c.getaccount");
        var action2=component.get("c.getcontact");
        var cols=[{label:'Account Name',fieldName:'Name',type:'text'},{label:'Phone',fieldName:'Phone',type:'text'},{label:'Industry',fieldName:'Industry',type:'text'}];
       	var cols1=[{label:'Contact Name',fieldName:'LastName',type:'text'},{label:'Email',fieldName:'Email',type:'text'}];
        
        component.set("v.Actcols",cols);
        component.set("v.Contcols",cols1);
        component.set("v.flag",true);
        action.setCallback(this,function(res){
           var state=res.getState();
            if(state==='SUCCESS')
            {
                var result=res.getReturnValue();
                component.set("v.Act",result);
            }
            else{
                alert("fuckkk!!!");
            }
            
            
            
        });
         action2.setCallback(this,function(res){
           var state=res.getState();
            if(state==='SUCCESS')
            {
                var result=res.getReturnValue();
                component.set("v.Cont",result);
            }
            else{
                alert("fuckkk!!!");
            }
            
            
            
        });
        $A.enqueueAction(action);
        $A.enqueueAction(action2);
	
	},
    Clear : function(component, event, helper){
        
        component.set("v.Act",null);
        component.set("v.Cont",null);
    }
})
