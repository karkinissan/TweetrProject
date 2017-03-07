<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>DASHGUM - FREE Bootstrap Admin Template</title>

    <!-- Bootstrap core CSS -->
    %{--<link href="assets/css/bootstrap.css" rel="stylesheet">--}%
    <link href="<g:createLinkTo dir="css" file="bootstrap.css"/>" rel="stylesheet">
    <!--external css-->
    %{--<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />--}%
    <link href="<g:createLinkTo dir="font-awesome/css" file="font-awesome.css"/>" rel="stylesheet">

    %{--<link rel="stylesheet" type="text/css" href="assets/css/zabuto_calendar.css">--}%
    <link href="<g:createLinkTo dir="css" file="zabuto_calendar.css"/>" rel="stylesheet">

    %{--<link rel="stylesheet" type="text/css" href="assets/js/gritter/css/jquery.gritter.css" />--}%
    <link href="<g:createLinkTo dir="js/gritter/css" file="jquery.gritter.css"/>" rel="stylesheet">

    %{--<link rel="stylesheet" type="text/css" href="assets/lineicons/style.css">--}%
    <link href="<g:createLinkTo dir="lineicons" file="style.css"/>" rel="stylesheet">

    <!-- Custom styles for this template -->
    %{--<link href="assets/css/style.css" rel="stylesheet">--}%
    <link href="<g:createLinkTo dir="css" file="style.css"/>" rel="stylesheet">

    %{--<link href="assets/css/style-responsive.css" rel="stylesheet">--}%
    <link href="<g:createLinkTo dir="css" file="style-responsive.css"/>" rel="stylesheet">


    %{--<script src="assets/js/chart-master/Chart.js"></script>--}%
    <script src="<g:createLinkTo dir="js/chart-master" file="Chart.js"/>"></script>
</head>

<body>

<g:each in="${status}">
    <div class="row mt">
        <div class="col-md-4 mb">
            <div class="white-panel pn">
                <div class="white-header">
                    Status Id:${status.id}<br>
                </div>

                <h3>${status.tweet}</h3>
                <br>
                <br>
                <br>
                <p class="small mt">Date Posted: ${status.dateCreated}</p>

            </div>
        </div>
    </div>
</g:each>
</body>
</html>
