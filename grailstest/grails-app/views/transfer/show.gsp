%{--Include Main Layout--}%
<meta name="layout" content="main"/>

<div class="card">
    <div class="card-header">
        <g:message code="Trasfer Details" args="['Show']"/>
    </div>
    <div class="card-body">
        <g:if test="${transfer}">
            <table class="table">
                <tr>
                    <th class="text-right"><g:message code="Type"/></th><td class="text-left">${transfer.type}</td>
                </tr>
                <tr>
                    <th class="text-right"><g:message code="Sender Name"/></th><td class="text-left">${transfer.senderName}</td>
                </tr>
                <tr>
                    <th class="text-right"><g:message code="Sender Address"/></th><td class="text-left">${transfer.senderAddress}</td>
                </tr>
                <tr>
                    <th class="text-right"><g:message code="Receiver Name"/></th><td class="text-left">${transfer.receiverName}</td>
                </tr>
				<tr>
                    <th class="text-right"><g:message code="Receiver Address"/></th><td class="text-left">${transfer.receiverAddress}</td>
                </tr>
				<tr>
                    <th class="text-right"><g:message code="Vehicle Info"/></th><td class="text-left">${transfer.vehicleInformation}</td>
                </tr>
            </table>
        </g:if>
        <div id="show-transfer" class="col-12 content scaffold-show" role="main">
                   
                    <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                    </g:if>
                  
                    <g:form resource="${this.transfer}" method="DELETE">
                        <fieldset class="buttons">
                            <g:link class="btn btn-success" action="edit" resource="${this.transfer}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                            <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                        </fieldset>
                    </g:form>
             </div>
    </div>
</div>