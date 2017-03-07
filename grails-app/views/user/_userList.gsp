<%--
  Created by IntelliJ IDEA.
  User: Nissan
  Date: 2/21/2017
  Time: 7:10 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<style type="text/css">
.pn {
    height: 70px;
    box-shadow: 0 2px 1px rgba(0, 0, 0, 0.2);
}
    .white-panel{
        padding: 5px;
        padding-left: 10px;
    }
</style>
</head>

<body>

    <g:each in="${user}">
        <g:if test="${user?.profile?.fullName}">
        <div class="white-panel pn">
        <table border="0">
            <tr>
                <td rowspan="3"><img src="${createLink(controller: 'profile', action: 'displayPicture', id: user.id)}"
                         width="60"></td>
                <td><h4><g:link controller="profile" action="viewProfile" params="[userId:user.id]" >
                        &nbsp;${user?.profile?.fullName}
                </g:link></h4>&nbsp;&nbsp;<g:smallFollowUnfollowEditButton userId="${user.id}"/></td>
            </tr>
            <tr>
            </tr>
            <tr><td><br></td></tr>
        </table>
        </div><br>
        </g:if>
    </g:each>
</body>
</html>