<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>

</head>

<body>
<div id="main-body">
    <g:form controller="status" class="form-horizontal" role="form" id="statusForm">
        <div class="form-group" style="padding:14px;">
            <g:textArea name="tweet" class="form-control" placeholder="Update your status"
                        value="${status.tweet}"></g:textArea>
        </div>
        <g:hiddenField name="statusId" value="${status.id}"></g:hiddenField>
        <div class="pull-right">
            <g:remoteLink controller="status" action="updateStatus" params="[statusId: status.id, tweet: status.tweet,cancel:true]"
                          class="btn btn-danger" update="updateThis">Cancel</g:remoteLink> &nbsp; &nbsp; &nbsp;
            <g:submitToRemote action="updateStatus" value="Update" class="btn btn-primary pull-right"
                              update="updateThis"></g:submitToRemote>
        </div>
    </g:form>
</div>
</body>
</html>