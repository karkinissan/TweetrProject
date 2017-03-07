<%--
  Created by IntelliJ IDEA.
  User: Nissan
  Date: 2/26/2017
  Time: 5:11 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="myTemplate">

</head>

<body>
<div id="main-body">
<div class="well" id="statusBox">
    <g:form controller="status" class="form-horizontal" role="form" id="statusForm">
        <h4>Welcome <strong>${user?.profile?.fullName}.</strong> <br>What's New</h4>
        <div class="form-group" style="padding:14px;">
            <g:textArea name ="tweet" class="form-control" placeholder="Update your status"></g:textArea>
        </div>
        <g:submitToRemote value="Post" url="[controller: 'status', action: 'save']" update="allPosts"
                          class="btn btn-primary pull-right"></g:submitToRemote>
        <ul class="list-inline"><li><a href=""><i class="glyphicon glyphicon-upload"></i></a></li><li><a href=""><i class="glyphicon glyphicon-camera"></i></a></li><li><a href=""><i class="glyphicon glyphicon-map-marker"></i></a></li></ul>
    </g:form>
</div>
<div id="allPosts">

</div>
<div id="feed">
    <g:render template="/status/feed" collection="${statusList}" var="status" ></g:render>
</div>
</div>
</body>
</html>

