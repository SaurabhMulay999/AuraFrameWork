<aura:application extends="force:slds" controller="customerdata" >
    <aura:attribute name="Acc" type="customerdata.data[]"/>
    <aura:attribute name="Col" type="List"/>
    <aura:attribute name="Flag" type="Boolean" />
    <lightning:card>
    <aura:set attribute="actions">
        <lightning:button label="Show" onclick="{!c.Invoke}"/>
        </aura:set>
        <div>
            <lightning:datatable keyField="id" data="{!v.Acc}" columns="{!v.Col}" hideCheckboxColumn="true"/>
            
        </div>
    
    </lightning:card>
</aura:application>
