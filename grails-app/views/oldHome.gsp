<%--
  Created by IntelliJ IDEA.
  User: Nissan
  Date: 2/8/2017
  Time: 9:33 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>
        <meta name="layout" content="myTemplate">
    </title>
    <ckeditor:resources/>
</head>

<body>
<div id="main-body">
    <h1>${user.userName}'s Profile</h1>

    <h1><g:helloTag name="${user?.profile?.fullName}"/></h1>
    <g:welcomeBack name="${user?.profile?.fullName}">
        <h1>Welcome Back ${user?.profile?.fullName}</h1>
    </g:welcomeBack>
    <g:link controller="profile" action="editProfile">Edit Profile</g:link>
    <g:if test="${user?.profile?.picture}">
        <img src="${createLink(controller: 'profile', action: 'displayPicture', id: user.id)}" width="200"/>
    </g:if>
    <div id="message">
        This will change.
    </div>
    <g:remoteLink controller="profile" action="testAction" id="1" update="message">Test Action</g:remoteLink>
    <g:form>
        <g:textArea name="tweet"></g:textArea><br>
        <g:submitToRemote value="Post" url="[controller: 'status', action: 'save']" update="allPosts"
                          class="btn btn-primary "></g:submitToRemote>
    </g:form>
    <ckeditor:editor name="myeditor" height="400px" width="80%">
        ${initialValue}
    </ckeditor:editor>

    <g:remoteLink controller="status" action="listAllStatus" update="allPosts">List All Status</g:remoteLink>
    <div id="allPosts">

    </div>

    <g:remoteLink controller = "profile" action ="viewProfile" params="[userId: user.id]" update="main-body">View Your Profile</g:remoteLink>
</div>
</body>
</html>