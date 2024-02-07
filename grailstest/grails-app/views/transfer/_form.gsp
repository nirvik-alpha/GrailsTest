<div class="form-group">
    <label><g:message code="transfer.type"/> *</label>

 <g:select name="type" class="form-control"  from="[Transfer.INTERNAL: 'Internal', Transfer.EXTERNAL: 'External']" value="${transfer?.type}" optionKey="key" optionValue="value"/>

</div>

<div class="form-group">
    <label><g:message code="sender.name"/> *</label>
    <g:textField name="senderName" class="form-control" value="${transfer?.senderName}" placeholder="Please Enter Sender Name"/>
</div>

<div class="form-group">
    <label><g:message code="sender.address"/> *</label>
    <g:textField name="senderAddress" class="form-control" value="${transfer?.senderAddress}" placeholder="Please Enter Sender Address"/>
</div>

<div class="form-group">
    <label><g:message code="receiver.name"/> *</label>
    <g:textField name="receiverName" class="form-control" value="${transfer?.receiverName}" placeholder="Please Enter Receiver Name"/>
</div>

<div class="form-group">
    <label><g:message code="receiver.address"/> *</label>
    <g:textField name="receiverAddress" class="form-control" value="${transfer?.receiverAddress}" placeholder="Please Enter Receiver Address"/>
</div>

<div class="form-group">
    <label><g:message code="vehicle.information"/> *</label>
    <g:textField name="vehicleInformation" class="form-control" value="${transfer?.vehicleInformation}" placeholder="Please Enter Vehicle Information"/>
</div>


