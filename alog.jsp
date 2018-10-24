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
          <img src="https://www.silicon.ac.in/assets/images/logo-sit-w.png" alt="Silicon Institute of Technology"> <label style="color: white;">Silicon Institute of Technology </label>
          <div class="nav navbar-nav navbar-right" style="margin-right: 10px;">
          <a href="log.jsp"><button class="btn btn-warning">Home</button></a>
          </div>
    </nav>

	<div class="container-fluid">
		
		<div class="row">
			<div class="col-md-4 col-sm-12 col-xs-12"></div>
			<div class="col-md-4 col-sm-12 col-xs-12">
				<!--Start-->
				<form class="form-horizontal" method="POST" action="http://localhost:8080/test/asuccess.jsp">
					<h1 style="color: white;">Admin Login <i class="fas fa-lightbulb" aria-hidden="true"></i> </h1>
					<div class="form-group">
						<label class="control-label">ID:</label>
						<div class="input-group">
							<span class="input-group-addon">
								<span class="glyphicon glyphicon-user"> </span>
							</span>
							<input type="text" class="form-control" placeholder="ID" name="sic">
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