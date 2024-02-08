<meta name="layout" content="public"/>

<div class="card">
    <div class="card-header">
        User Registration
    </div>
    <div class="card-body">
        <g:form controller="user" action="save">
            <g:render template="/user/form"/>
            <g:submitButton name="registration" value="Registration" class="btn btn-primary"/>
            <g:link controller="authentication" action="login" class="btn btn-primary"><g:message code="Back To Login"/></g:link>
        </g:form>
    </div>
</div>