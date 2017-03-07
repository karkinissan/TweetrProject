<%--
  Created by IntelliJ IDEA.
  User: Nissan
  Date: 2/21/2017
  Time: 7:01 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>${user?.profile?.fullName} - Tweetr</title>
    <meta name="layout" content="myTemplate">
</head>

<body>
<div class="well">
<h1>${user?.profile?.fullName}'s Profile</h1><br>
Username: ${user?.userName}<br>
Full Name: ${user?.profile?.fullName}<br>
Address:  ${user?.profile?.address}<br>
DOB:${user?.profile?.DOB}<br>
Gender:${user?.profile?.gender}<br>
Profile Picture: <img src="${createLink(controller: "profile", action: "displayPicture", id: user.id)}"
                      width="200"/><br>
%{--<g:checkId userId="${user.id}">
    <g:link controller="profile" action="editProfile" class="btn btn-success">Edit Profile</g:link>
</g:checkId><br>--}%
<br>
%{--<g:followButton userId="${user.id}">
    <g:checkFollow userId="${user.id}">
        <g:link controller="user" action="follow" params="[userId: user.id]"
                class="btn btn-primary btn-lg">Follow ${user.profile.fullName}</g:link>
    </g:checkFollow>
</g:followButton>--}%
    <g:followUnfollowEditButton userId="${user.id}"/>
</div>
<g:render template="/status/feed" collection="${statusList}" var="status" ></g:render>

</body>
</html>