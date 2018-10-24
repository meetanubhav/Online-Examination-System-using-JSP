<%@page import="java.sql.*,java.util.*"%>
<%@ page import = "java.io.*"%>
<%
String id = request.getParameter("userId");
String driverName = "org.sqlite.JDBC";
String connectionUrl = "jdbc:sqlite:C:\\Users\\Anubhav Gupta\\Desktop\\dbs\\";

String paper = (String) session.getAttribute("paper");
try {
Class.forName(driverName);
} 
catch (ClassNotFoundException e) 
{
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;

try
{ 

	connection = DriverManager.getConnection("jdbc:sqlite:C:\\Users\\Anubhav Gupta\\Desktop\\dbs\\"+"student.db");
	statement=connection.createStatement();
	
	String sql ="SELECT * FROM questiondb where paper='" + paper + "'";
	resultSet = statement.executeQuery(sql);
	

}
catch (Exception e) 
{
	e.printStackTrace();
}
%>

	
<!DOCTYPE html>
<html>
<head>
	<title>Quiz Time</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <script>
		function startTimer(duration, display) {
		    var timer = duration, minutes, seconds;
		    setInterval(function () {
		        minutes = parseInt(timer / 60, 10)
		        seconds = parseInt(timer % 60, 10);

		        minutes = minutes < 10 ? "0" + minutes : minutes;
		        seconds = seconds < 10 ? "0" + seconds : seconds;

		        display.textContent = minutes + ":" + seconds;

		        if (--timer < 0) {
		            timer = duration;
		        }
		    }, 1000);
		}

		window.onload = function () {
		    var fiveMinutes = 60 * 30,
		        display = document.querySelector('#time');
		    startTimer(fiveMinutes, display);
		};
	</script>
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
          <div class="container-fluid" style="margin-block-start: inherit;text-align: -webkit-left;color: white;padding: 15px;">
               <img src="https://www.silicon.ac.in/assets/images/logo-sit-w.png" alt="Silicon Institute of Technology"> Silicon Institute of Technology
          
               <div class="nav navbar-nav navbar-right" style="margin-right: 45%;"><div class="btn btn-success  ">Quiz ends in <span id="time">30:00</span> minutes!</div></div></div>
    </nav>

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2 col-sm-12 col-xs-12">
			</div>
			<div class="col-md-8 col-sm-12 col-xs-12">
				<div class="container-fluid">

							
					<div class="form-horizontal">
							<form class="form-group custom-form" method="POST" action="result.jsp" style="color: white;">
					<span>
					
					
						
							
					    
								<h1><%=resultSet.getString("paper") %> Quiz</h1>
								<label class="control-label">Question : <label class="control-label" name="ques"><%=resultSet.getString("ques") %></label></label> <br>
								<input type="radio" name="answer" value= "1" UNchecked><%=resultSet.getString("ans1") %>
								<br>
			  					<input type="radio" name="answer" value= "2" > <%=resultSet.getString("ans2") %>
			  					<br>
			  					<input type="radio" name="answer" value= "3 " > <%=resultSet.getString("ans3") %>
			  					<br>
							    <input type="radio" name="answer" value= "4" > <%=resultSet.getString("ans4") %>
							    <br>
							    <br><br>
								
							   
							    <br><br>
								<input type="submit" value="Submit" class="btn btn-success">
			  				
							<a href="login.jsp"><button class="btn btn-danger">End Quiz</button></a>
					</span>

					</div>
					</form>					
				</div>
			</div>
			<div class="col-md-2 col-sm-4 col-xs-12"></div>
		</div>
	</div>
</body>
</html>