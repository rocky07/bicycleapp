<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Register</title>

    <link href="css/bootstrap.min.css" rel="stylesheet" type='text/css'>
    <link href='fonts/font-awesome/css/font-awesome.min.css' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900,300italic,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='fonts/lovelo/stylesheet.css' rel='stylesheet' type='text/css'>

    <link href='css/owl.carousel.css' rel='stylesheet' type='text/css'>
    <link href='css/owl.theme.css' rel='stylesheet' type='text/css'>
    <link href="css/custom.css" rel="stylesheet" type='text/css'>

    <!--[if lt IE 9]>
    <script src="js/html5shiv.min.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<!--Start class site-->
<div class="tz-site">

    <!--Start id tz header-->
	<jsp:include page="header.jsp"></jsp:include>
    <!--End id tz header-->

    <!--Start create an account-->
    <section class="default-page">
        <div class="container">
            <div class="tz-register">
                <h2>Create an account</h2>
				
				
                <!--Start form-->
                <form:form method="post" modelAttribute="userForm" action="adduser">
                    <p class="form-row form-row-wide">
                        <label for="email">Email address</label>
                        <form:input path="email" class="input-text" type="text" />
                        <form:errors path="email" />
                    </p>
                    <p class="form-row form-row-wide">
                        <label for="name">Name</label>
                        <form:input path="name" class="input-text" type="text" />
                        <form:errors path="name" />
                    </p>
                    <p class="form-row form-row-wide">
                        <label for="password">Password</label>
                        <form:input path="password" class="input-text" type="password" />
                        <form:errors path="password" />
                    </p>
                    <p class="form-row form-row-wide">
                        <label for="cpassword">Confirm Password</label>
                        <form:input path="cpassword" class="input-text" type="password" />
                        <form:errors path="cpassword" />
                    </p>
 					<p class="form-row">
                        <input type="submit" id="userform" class="button" name="register" value="Create an account">
                    </p>
                   
                </form:form>
                
                <!--End form-->

            </div>
        </div>
    </section>
    <!--End create an account-->

    <!--Start Footer-->
	<jsp:include page="footer.jsp"></jsp:include>
    <!--End Footer-->

</div><!--End class site-->

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/off-canvas.js"></script>
<!--jQuery Countdow-->
<script src="js/jquery.plugin.min.js"></script>
<script src="js/jquery.countdown.min.js"></script>
<!--End Countdow-->

<script src="js/owl.carousel.js"></script>
<script src="js/custom.js"></script>

</body>
</html>
