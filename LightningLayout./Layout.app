<aura:application extends="Force:slds" controller="showdetails">
    <aura:attribute name="Act" type="List"/>
	<aura:attribute name="Actcols" type="List"/>
    <aura:attribute name="Cont" type="List"/>
    <aura:attribute name="Contcols" type="List"/>
    <aura:attribute name="flag" type="boolean"/>
   
    <lightning:card >
         <aura:set attribute="actions">
        <lightning:button label="Show" onclick="{!c.Show}"/>
             <lightning:button label="Clear" onclick="{!c.Clear}"/>
        </aura:set>
        </lightning:card>
    <lightning:layout multipleRows="true">
        <div style="width:400px;height:200px;margin:100px;">
        <lightning:layoutItem size="12">
            <lightning:datatable keyField="id" data="{!v.Act}" columns="{!v.Actcols}" hideCheckboxColumn="true"/>
        </lightning:layoutItem>
            </div>
        <div style="width:400px;height:200px;margin:100px;">
       <lightning:layoutItem size="12">
            <lightning:datatable keyField="id" data="{!v.Cont}" columns="{!v.Contcols}" hideCheckboxColumn="true"/>
        </lightning:layoutItem>
        </div>
        
    </lightning:layout>
    
    
    
        
    
</aura:application>
