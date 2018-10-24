<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@ page import = "java.io.*"%>
<%
	String name=request.getParameter("name");
	String sic=request.getParameter("sic");
	String redgno=request.getParameter("redgno");
	String password=request.getParameter("password");
	String branch=request.getParameter("branch");
	String sems=request.getParameter("sems");
	Class.forName("org.sqlite.JDBC");
	Connection conn = DriverManager.getConnection("jdbc:sqlite:C:\\Users\\Anubhav Gupta\\Desktop\\dbs\\"+"student.db");
	out.print("Connection succesful");
	Statement st=conn.createStatement();
	out.print("Inserting");
	// int i=st.executeUpdate("insert into student values('"+name+"','"+sic+"','"+redgno+"','"+password+"','"+branch+"','"+sems+"')");
	String sql="insert into logindata (name,sic,redgno,password,branch,sems) values (?,?,?,?,?,?);";
	PreparedStatement ps = conn.prepareStatement(sql);
	ps.setString(1,name);
	ps.setString(2,sic);
	ps.setString(3,redgno);
	ps.setString(4,password);
	ps.setString(5,branch);
	ps.setString(6,sems);
	ps.executeUpdate();
	// conn.close();
	String redirectURL = "log.jsp";
	response.sendRedirect(redirectURL);
%>