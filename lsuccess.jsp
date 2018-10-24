
<%@page import="java.sql.*,java.util.*"%>
<%@ page import = "java.io.*"%>

<%
String id = request.getParameter("userId");
String driverName = "org.sqlite.JDBC";
String connectionUrl = "jdbc:sqlite:C:\\Users\\Anubhav Gupta\\Desktop\\dbs\\";


String sic=request.getParameter("sic");
String password=request.getParameter("password");
String name;
int flag=0;

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
		
		String sql ="SELECT * FROM logindata where sic='" + sic + "'";
		resultSet = statement.executeQuery(sql);
		if(resultSet.next()){
		if(password.equals(resultSet.getString("password"))){
		session.setAttribute("branch",resultSet.getString("branch"));
		session.setAttribute("name",resultSet.getString("name"));
		session.setAttribute("sic",resultSet.getString("sic"));
		session.setAttribute("sems",resultSet.getString("sems"));
		out.println("success");
		session.setAttribute("question_passed",0);
		session.setAttribute("correct_answer",0);
		response.sendRedirect("http://localhost:8080/test/dashboard.jsp");
	} else{
	response.sendRedirect("http://localhost:8080/test/log.jsp");
}
	}
		
	}
    catch(Exception e)
    {
    	System.out.print(e);
    	e.printStackTrace();
    }
%>
