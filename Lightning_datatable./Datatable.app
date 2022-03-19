<aura:application extends="force:slds" controller="DML">
    
    <aura:attribute type="List" name="Records"/>
    <aura:attribute type="List" name="colu"/>
    <aura:attribute type="Account" name="AccRecords" default="{'sobjectType':'Account'}"/>
    <div style="margin:100px">
        <lightning:button label="ShowAll" onclick="{!c.show}"/>
    </div>
    <div style="width:500px; height:700px; margin:100px">
        <lightning:datatable keyField="id" data="{!v.Records}" columns="{!v.colu}" hideCheckboxColumn="true"/>
        
    </div>
    
</aura:application>
