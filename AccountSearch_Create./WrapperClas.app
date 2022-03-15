<aura:application extends="force:slds" controller="Customer_Details">
    <!--This is Acc creating component-->
    <aura:attribute type="string" name="Act"/>
    <aura:attribute type="Account" name="AccRecord" default="{'sobjectType':'Account'}"/>
    <lightning:card class="ApexCode" iconName="standard:account" >
    <aura:set attribute="title">
        Aura Account
        </aura:set>
        <div>
            <lightning:input label="Name" value="{!v.AccRecord.Name}"/>
            <lightning:input label="Phone" value="{!v.AccRecord.Phone}"/>
            <lightning:input label="Industry" value="{!v.AccRecord.Industry}"/>
        </div>
        <aura:set attribute="actions">
            <lightning:button label="Save" onclick="{!c.Save}"/>
            <lightning:button label="ClearData" onclick="{!c.clear}"/>
        </aura:set>
    </lightning:card>
    <!--this is the searching one-->
    <aura:attribute name="AccRecords" type="Customer_Details.customer_info"/>
    <aura:attribute name="Flag" type="boolean" default="false"/>
    
    <aura:attribute name="strey" type="string"/>
    <div class="ApexCode1">
        <lightning:input label="Industry" value="{!v.strey}"/>
        <lightning:button label="Search" onclick="{!c.SearchData}"/>
    </div>
    <aura:if isTrue="{!v.Flag}" >
    <div style="margin:60px; padding:2px; width:400px; height:200px; left:100px;">
        <lightning:card title="customer Information" iconName="standard:account" >
        <div>
            <b>Name</b>      : {!v.AccRecords.accName}<br/>
            <b>Phone</b>     : {!v.AccRecords.accPhone}<br/>
            <b>Industry</b>  : {!v.AccRecords.Industry}<br/>
            
        </div>                                                                       
        </lightning:card>                                                                        
    
    </div>
        </aura:if>
    
</aura:application>
