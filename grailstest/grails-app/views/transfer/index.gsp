%{--Include Main Layout--}%
<meta name="layout" content="main"/>

<div class="card">
    <div class="card-header">
       

        <span class="float-left">

        %{--Search Panel --}%
        <div class="btn-group">
            <g:form controller="transfer" action="index" method="GET">
                <div class="input-group" id="search-area">
                    
                    <g:textField name="type" size="110" class="form-control" placeholder="Search Type..." value="${params?.type}"/>
                    <span class="input-group-btn">
                        <button class="btn btn-dark" type="submit">Search</button>
                    </span>
                </div>
            </g:form>
        </div>

        %{--Create and Reload Panel--}%
        <div class="btn-group">
            <g:link controller="transfer" action="create" class="btn btn-success"><g:message code="create"/></g:link>
          
        </div>
        </span>
    </div>

    %{--Table Panel--}%
    <div class="card-body">
        <table class="table table-bordered">
            <thead class="bg-success">
            <tr>

                <g:sortableColumn property="type" title="${g.message(code: "Type")}"/>
                <g:sortableColumn property="senderName" title="${g.message(code: "Sender Name")}"/>
                <g:sortableColumn property="senderAddress" title="${g.message(code: "Sender Address")}"/>
                <g:sortableColumn property="receiverName" title="${g.message(code: "Receiver Name")}"/>
                <g:sortableColumn property="receiverAddress" title="${g.message(code: "Receiver Address")}"/>
                <g:sortableColumn property="vehicleInformation" title="${g.message(code: "Vehicle Information")}"/>
                <th class="action-row"><g:message code="Action"/></th>

            </tr>
            </thead>
            <tbody>
                <g:each in="${transferList}" var="info">
                    <tr>
                        
                        <td>${info?.type}</td>
                        <td>${info?.senderName}</td>
                        <td>${info?.senderAddress}</td>
                        <td>${info?.receiverName}</td>
                        <td>${info?.receiverAddress}</td>
                         <td>${info?.vehicleInformation}</td>

                        %{--Table Actions --}%
                        <td>
                            <div class="btn-group">
                                <g:link controller="transfer" action="show" class="btn btn-success" id="${info.id}"><g:message code="Details"/></g:link>
                                <g:link controller="transfer" action="edit" class="btn btn-success" id="${info.id}"><g:message code="Edit"/></g:link>
                                 <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                            </div>
                        </td>
                    </tr>
                </g:each>
            </tbody>
        </table>
    %{--Pagination Area--}%
    <div class="paginate">
        <g:paginate total="${transferCount ?: 0}" />
    </div>
    </div>
</div>