<!DOCTYPE html>
<html>
<head>
	<title>Login page</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid" style="margin-block-start: inherit;text-align: -webkit-left;color: white;padding: 15px;">
               <img src="https://www.silicon.ac.in/assets/images/logo-sit-w.png" alt="Silicon Institute of Technology"> Silicon Institute of Technology
          <div class="nav navbar-nav navbar-right" style="margin-right: 10px;">
          	<a href="guidelines.jsp"><button class="btn btn-info">Quiz Guidelines</button></a>
          <a href="alog.jsp"><button class="btn btn-warning">Admin Login</button></a>
          </div>
          </div>
		
    </nav>

	<div class="container-fluid">
		
		<div class="row">
			<div class="col-md-4 col-sm-12 col-xs-12"></div>
			<div class="col-md-4 col-sm-12 col-xs-12">
				<!--Start-->
				<form class="form-horizontal" method="POST" action="http://localhost:8080/test/lsuccess.jsp">
					<h1 style="color: white;"> Welcome To Quiz <i class="fas fa-lightbulb" aria-hidden="true"></i> </h1>
					<div class="form-group">
						<label class="control-label">SIC:</label>
						<div class="input-group">
							<span class="input-group-addon">
								<span class="glyphicon glyphicon-user"> </span>
							</span>
							<input type="text" class="form-control" placeholder="SIC" name="sic">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label">PASSWORD:</label>
						<div class="input-group">
							<span class="input-group-addon">
								<span class="glyphicon glyphicon-lock"> </span>
							</span>
							<input type="text" class="form-control" placeholder="PASSWORD" name="password">
						</div>
					</div>
					
					<label><a href="register.jsp">New user?Register here!</a></label>
					<div class="form-group custom-form">
						<input type="submit" value="Login" class="btn btn-success btn-block">
	  				</div>
	  				<div class="form-group custom-form">
						<input type="reset" value="Reset" class="btn btn-danger btn-block">
					</div>
				</form>
				<!-- form end -->
			</div>
			<div class="col-md-4 col-sm-4 col-xs-12"></div>
		</div>
	</div>
</body>
</html>