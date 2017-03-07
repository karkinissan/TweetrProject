<%--
  Created by IntelliJ IDEA.
  User: Nissan
  Date: 2/8/2017
  Time: 9:46 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <link rel="stylesheet" href="<g:createLinkTo dir="editProfileCSS" file="style.css"/>">
</head>

<body>
<div class ="form-style">
<h2>EDIT PROFILE</h2>
<g:uploadForm controller ="profile">

    <table>
        <tr>
            <td>Full Name:</td>
            <td><g:textField name="fullName" value="${user?.profile?.fullName}"/></td>
        </tr>
        <tr>
            <td>Address:</td>
            <td><g:textField name="address" value="${user?.profile?.address}"/></td>
        </tr>
        <tr>
            <td>DOB:</td>
            <td><g:textField name="DOB" value="${user?.profile?.DOB}"/></td>
        </tr>
        <tr>
            <td>Gender:</td>
            <g:if test="${user?.profile?.gender=="male"}">
            <td>Male<g:radio name="gender" value="male" checked ="true"/>
                Female<g:radio name="gender" value="female" /></td>
            </g:if>
            <g:else>
                <td>Male<g:radio name="gender" value="male" />
                Female<g:radio name="gender" value="female" checked ="true"/></td>
            </g:else>
        </tr>
        <tr>
            <td>Photo:</td>
            <td><input type="file" name="picture" id="picture"/></td>
        </tr>
        <tr>
            <td></td>
            <td><g:actionSubmit value="Submit" action="saveProfile" /></td>
        </tr>
    </table>
</g:uploadForm>
</div>
</body>
</html>