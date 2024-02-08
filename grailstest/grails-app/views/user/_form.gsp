<div class="form-group">
    <label><g:message code="First Name"/> *</label>
    <g:textField name="firstName" class="form-control" value="${user?.firstName}" placeholder="Please Enter First Name"/>
    <UIHelper:renderErrorMessage fieldName="firstName" model="${user}" errorMessage="please.enter.first.name"/>
</div>

<div class="form-group">
    <label><g:message code="Last Name"/></label>
    <g:textField name="lastName" class="form-control" value="${user?.lastName}" placeholder="Please Enter Last Name"/>
</div>

<div class="form-group">
    <label><g:message code="Email Address"/> *</label>
    <g:field type="email" name="email" class="form-control" value="${user?.email}" placeholder="Please Enter Email"/>
    <UIHelper:renderErrorMessage fieldName="email" model="${user}" errorMessage="Your Email Address is not Valid / Already Exist in System"/>
</div>

<g:if test="${!edit}">
    <div class="form-group">
        <label><g:message code="password"/> *</label>
        <g:passwordField name="password" class="form-control" value="${user?.password}" placeholder="Please Enter Password"/>
        <UIHelper:renderErrorMessage fieldName="password" model="${user}" errorMessage="Please Enter a Password."/>
    </div>
</g:if>