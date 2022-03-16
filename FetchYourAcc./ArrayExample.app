<aura:application extends="force:slds" controller="Customer">
    <aura:attribute name="ListAcc" type="List" />
    <div style="width:500px;margin-left:100px; margin-top:100px;">
    <lightning:card title="The Account fetch" iconName="standard:account">
        <aura:set attribute="actions">
            <lightning:button label="ShowData" onclick="{!c.Show}"/>
            <lightning:button label="Clear" onclick="{!c.Clear}"/>
        </aura:set>
        <table>
        <tr>
           <td>
            <b>Name</b>
           </td> 
            <td>
            <b>Phone</b>
            </td>
            <td>
            <b>Industry</b>
            </td>
        </tr>
       
            <aura:iteration items="{!v.ListAcc}" var="A">
           <tr>
            <td>
              {!A.Name} 
            </td>
            <td>
              {!A.Phone} 
            </td>
            <td>
              {!A.Industry} 
            </td>    

       	</tr>
                            </aura:iteration> 
        </table>
        <aura:set attribute="footer">
        This is managed by @Opstech
        </aura:set>
    </lightning:card>
    </div>
	
</aura:application>
