({
	show : function(component, event, helper) {
      var action=component.get("c.Collect");
      var cols=[{label:'AccountName', fieldName:'Name' ,type:'text'},{label:'AccountPhone', fieldName:'Phone' ,type:'text'}
                 ,{label:'AccountIndustry', fieldName:'Industry', type:'text'}]; 
        component.set("v.colu",cols)
        action.setCallback(this,function(response){
            var state=response.getState();
            if(state==='SUCCESS')
            {
                var result=response.getReturnValue();
                component.set("v.Records",result);
            }
            
        });
        $A.enqueueAction(action);
        
        
		
	}
})
