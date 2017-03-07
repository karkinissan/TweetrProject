<%--
  Created by IntelliJ IDEA.
  User: Nissan
  Date: 2/26/2017
  Time: 5:30 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<g:each in="${status}">
    <div id="updateThis"}>

        <div class="panel panel-default">
            <div class="panel-heading">
                <g:deleteStatus statusId="${status?.id}">
                    <div class="dropdown pull-right">
                        <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">
                            <span class="caret"></span></button>
                        <ul class="dropdown-menu ">
                            <li><g:remoteLink controller="status" action="editStatusAjax" params="[statusId: status.id]"
                                              update="statusBody">Edit</g:remoteLink></li>
                            <li><g:link controller="status" action="deleteStatus"
                                        params="[statusId: status?.id]">Delete</g:link></li>
                        </ul>
                    </div>
                </g:deleteStatus>

                <g:remoteLink controller="profile" action="viewProfile" params="[userId: user?.id]" update="main-body">
                    <img src="${createLink(controller: 'profile', action: 'displayPicture', id: status?.user?.id)}"
                         class="pull-left" width="40">
                </g:remoteLink>

                <strong><g:remoteLink controller="profile" action="viewProfile" params="[userId: user?.id]"
                                      update="main-body">
                    &nbsp;
                    <g:if test="${status?.user?.profile?.fullName}">
                        ${status?.user?.profile?.fullName}</g:if>

                    <g:else>${status?.user?.userName}</g:else>
                </g:remoteLink></strong> posted a status.<br>

                &nbsp;&nbsp;<g:formatDate format="MMM dd, yyyy H:m" date="${status?.dateCreated}"/>

            </div>

            <div class="panel-body" id="statusBody">

                %{--<div class="clearfix"></div>--}%
                <p>${status.tweet}</p>

                <form>
                    <div class="input-group">
                        <div class="input-group-btn">
                            <button class="btn btn-default">+1</button><button class="btn btn-default"><i
                                class="glyphicon glyphicon-share"></i></button>
                        </div>
                        <input type="text" class="form-control" placeholder="Add a comment..">
                    </div>
                </form>

            </div>
        </div>
    </div>
</g:each>
</body>
</html>