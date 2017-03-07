<!DOCTYPE html>
<html lang="en">
<head>
    <g:javascript library="jquery"/>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>TWEETR- A Twitter Clone</title>

    <!-- Bootstrap core CSS -->
    %{--<link href="assets/css/bootstrap.css" rel="stylesheet">--}%
    <link rel="stylesheet" href="<g:createLinkTo dir="css" file="bootstrap.css"/>">
    <!--external css-->
    %{--<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />--}%
    <link rel="stylesheet" href="<g:createLinkTo dir="font-awesome/css" file="font-awesome.css"/>">

    %{--<link rel="stylesheet" type="text/css" href="assets/css/zabuto_calendar.css">--}%
    <link rel="stylesheet" href="<g:createLinkTo dir="css" file="zabuto_calendar.css"/>">

    %{--<link rel="stylesheet" type="text/css" href="assets/js/gritter/css/jquery.gritter.css" />--}%
    <link rel="stylesheet" href="<g:createLinkTo dir="js/gritter/css" file="jquery.gritter.css"/>">
    %{--<link rel="stylesheet" type="text/css" href="assets/lineicons/style.css">--}%
    <link rel="stylesheet" href="<g:createLinkTo dir="lineicons" file="style.css"/>">

    <!-- Custom styles for this template -->
    %{--<link href="assets/css/style.css" rel="stylesheet">--}%
    <link rel="stylesheet" href="<g:createLinkTo dir="css" file="style.css"/>">
    %{--<link href="assets/css/style-responsive.css" rel="stylesheet">--}%
    <link rel="stylesheet" href="<g:createLinkTo dir="css" file="style-responsive.css"/>">

    %{--<script src="assets/js/chart-master/Chart.js"></script>--}%
    <script src="<g:createLinkTo dir="js/chart-master" file="Chart.js"/>"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <ckeditor:resources/>
    <r:layoutResources/>
    <style type="text/css">
    .ds{
        background: #f2f2f2;
    }
</style>
</head>

<body>

<section id="container">
    <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
    <!--header start-->
    <header class="header black-bg">
        <div class="sidebar-toggle-box">
            <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
        </div>
        <!--logo start-->
        <g:link controller="profile" action="goToHome" class="logo"><b>TWEETR</b></g:link>
    <!--logo end-->
        <div class="top-menu">
            <ul class="nav pull-right top-menu">
                <li>
                    <g:link controller="user" action="logout" class="logout" >
                        <span class="glyphicon glyphicon-log-out"></span>&nbsp; &nbsp;Logout</g:link></li>
            </ul>
        </div>
    </header>
    <!--header end-->

    <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
    <!--sidebar start-->
    <aside>
        <div id="sidebar" class="nav-collapse ">
            <!-- sidebar menu start-->
            <ul class="sidebar-menu" id="nav-accordion">

                %{--<p class="centered"><g:link controller="user" action="index"><img src="${createLink(controller: 'profile', action: 'displayPicture', id: user.id)}"  width="120"></g:link></p>--}%
                <p class="centered"><g:link controller="profile" action="viewProfile" params="[userId: session.userId]">
                    <img src="${createLink(controller: 'profile', action: 'displayPicture', id: session.userId)}"
                         width="120"></g:link>
                    </p>
            <h5 class="centered"><g:if test="${session?.userFullName}">${session?.userFullName}</g:if>
            <g:else>Create a profile</g:else></h5>

                <li class="mt">
                    <a class="active" href='${createLink(controller: 'profile', action: 'goToHome')}'>
                        <i class="fa fa-home"></i>
                        <span>Homepage</span>
                    </a>
                </li>

                <li class="sub-menu">
                    <a href='${createLink(controller: 'profile', action: 'editProfile')}'>
                        <i class="fa fa-edit"></i>
                        <span>Edit Profile</span>
                    </a>
                </li>

                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-user"></i>
                        <span>${followings} Following</span>
                    </a>

                </li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-user"></i>
                        <span>${followers} Followers</span>
                    </a>

                </li>

            </ul>
            <!-- sidebar menu end-->
        </div>
    </aside>
    <!--sidebar end-->

    <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
    <!--main content start-->
    <section id="main-content">
        <section class="wrapper">

            <div class="row">
                <div class="col-lg-9 main-chart">
                    <g:layoutBody/>

                </div><!-- /col-lg-9 END SECTION MIDDLE -->


            <!-- **********************************************************************************************************************************************************
      RIGHT SIDEBAR CONTENT
      *********************************************************************************************************************************************************** -->

                <div class="col-lg-3 ds">
                    %{--<g:remoteLink controller="user" action="listUsers" update="userList">List Users</g:remoteLink>--}%
                    <g:render template="/user/userList" collection="${userList}" var="user"></g:render>
                </div><!-- /col-lg-3 -->

            </div><! --/row -->
        </section>
    </section>

    <!--main content end-->
    <!--footer start-->

    <!--footer end-->
</section>

<!-- js placed at the end of the document so the pages load faster -->
%{--<script src="assets/js/jquery.js"></script>--}%
<script src="<g:createLinkTo dir="js" file="jquery.js"/>"></script>
%{--<script src="assets/js/jquery-1.8.3.min.js"></script>--}%
<script src="<g:createLinkTo dir="js" file="jquery-1.8.3.min.js"/>"></script>

%{--<script src="assets/js/bootstrap.min.js"></script>--}%
<script src="<g:createLinkTo dir="js" file="bootstrap.min.js"/>"></script>

%{--<script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>--}%
<script class="include" type="text/javascript"
        src="<g:createLinkTo dir="js" file="jquery.dcjqaccordion.2.7.js"/>"></script>

%{--<script src="assets/js/jquery.sparkline.js"></script>--}%
<script src="<g:createLinkTo dir="js" file="sparkline-chart.js"/>"></script>



<!--common script for all pages-->
%{--<script src="assets/js/common-scripts.js"></script>--}%
<script src="<g:createLinkTo dir="js" file="common-scripts.js"/>"></script>

%{--<script type="text/javascript" src="assets/js/gritter/js/jquery.gritter.js"></script>--}%
<script src="<g:createLinkTo dir="js/gritter/js" file="jquery.gritter.js"/>"></script>
%{--<script type="text/javascript" src="assets/js/gritter-conf.js"></script>--}%
<script src="<g:createLinkTo dir="js" file="gritter-conf.js"/>"></script>

<!--script for this page-->
%{--<script src="assets/js/sparkline-chart.js"></script>--}%
<script src="<g:createLinkTo dir="js" file="sparkline-chart.js"/>"></script>

%{--<script src="assets/js/zabuto_calendar.js"></script>--}%
<script src="<g:createLinkTo dir="js" file="zabuto_calendar.js"/>"></script>






<r:layoutResources/>

</body>
</html>
