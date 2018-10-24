<%@page import="java.sql.*,java.util.*"%>
<%@ page import = "java.io.*"%>
<%
String id = request.getParameter("userId");
String driverName = "org.sqlite.JDBC";
String connectionUrl = "jdbc:sqlite:C:\\Users\\Anubhav Gupta\\Desktop\\dbs\\";

String branch = (String) session.getAttribute("branch");
String name = (String) session.getAttribute("name");
String sic = (String) session.getAttribute("sic");
String sems = (String) session.getAttribute("sems");

out.println(branch);
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
		
		String sql ="SELECT * FROM questiondb where branch='" + branch + "' and sems='"+sems+"'";
		resultSet = statement.executeQuery(sql);
		if(resultSet.next()){
		session.setAttribute("paper",resultSet.getString("paper"));
		session.setAttribute("sems",resultSet.getString("sems"));
		session.setAttribute("branch",resultSet.getString("branch"));
		out.println("success");
		//response.sendRedirect("http://localhost:8080/test/dashboard.jsp");
	}
		
	}
    catch(Exception e)
    {
    	System.out.print(e);
    	e.printStackTrace();
    }
%>


<!DOCTYPE html>
<html>
<head>
	<title>Dashboard</title>
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
          </div>
    </nav>

	<div class="container-fluid">
		
		<div class="row">
			<div class="col-md-4 col-sm-12 col-xs-12"></div>
			<div class="col-md-4 col-sm-12 col-xs-12">
			<div class="container-fluid">
					<h1>Welcome</h1>
					<h1><% out.println(name); %></h1>
					<div class="form-horizontal">
						<h1 style="color: white">Select Quiz</h1>
						<span>
							<div class="form-group ">
								<a href="start_exam.jsp"><button class="btn btn-primary"><%String pap=resultSet.getString("paper"); out.println(pap); %></button></a>
							</div>
						</span>
					</div>
			</div>
			<div class="col-md-4 col-sm-12 col-xs-12"></div>
		</div>
	</div>
</body>
</html>
