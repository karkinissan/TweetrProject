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
    <meta name="layout" content="myTemplate">

</head>

<body>
<div class="form-style">
    <h2>EDIT PROFILE</h2>
    <g:uploadForm controller="profile" class="form-horizontal style-form">
        <div class="form-group">
            <label class="col-sm-2 col-sm-2 control-label">Full Name:</label>

            <div class="col-sm-10">
                <g:textField class="form-control" name="fullName" value="${user?.profile?.fullName}"/>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-2 col-sm-2 control-label">Address:</label>

            <div class="col-sm-10">
                <g:textField class="form-control" name="address" value="${user?.profile?.address}"/>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-2 col-sm-2 control-label">DOB:</label>

            <div class="col-sm-10">
                <g:textField class="form-control" name="DOB" value="${user?.profile?.DOB}"/>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-2 col-sm-2 control-label">Gender:</label>

            <div class="col-sm-10">
                <table>
                    <g:if test="${user?.profile?.gender == "male"}">
                        <td>Male<g:radio name="gender" value="male" checked="true"/>
                        Female<g:radio name="gender" value="female"/></td>
                    </g:if>
                    <g:else>
                        <td>Male<g:radio name="gender" value="male"/>
                        Female<g:radio name="gender" value="female" checked="true"/></td>
                    </g:else>
                </table>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-2 col-sm-2 control-label">Photo:</label>

            <div class="col-sm-10">
                <td><input type="file" name="picture" id="picture"/></td>

            </div>
        </div>
        <g:actionSubmit value="Submit" action="saveProfile"/>

    </g:uploadForm>
</div>
</body>
</html>