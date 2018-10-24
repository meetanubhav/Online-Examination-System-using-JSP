<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@ page import = "java.io.*"%>
<%
	String branch=request.getParameter("branch");
	String sems=request.getParameter("sems");
	String paper=request.getParameter("paper");
	String ques=request.getParameter("ques");
	String ans1=request.getParameter("ans1");
	String ans2=request.getParameter("ans2");
	String ans3=request.getParameter("ans3");
	String ans4=request.getParameter("ans4");
	String cans=request.getParameter("cans");
	Class.forName("org.sqlite.JDBC");
	Connection conn = DriverManager.getConnection("jdbc:sqlite:C:\\Users\\Anubhav Gupta\\Desktop\\dbs\\"+"student.db");
	out.print("Connection succesful");
	Statement st=conn.createStatement();
	out.print("Inserting");
	// int i=st.executeUpdate("insert into student values('"+name+"','"+sic+"','"+redgno+"','"+password+"','"+branch+"','"+sems+"')");
	String sql="insert into questiondb (branch,sems,paper,ques,ans1,ans2,ans3,ans4,cans) values (?,?,?,?,?,?,?,?,?);";
	PreparedStatement ps = conn.prepareStatement(sql);
	ps.setString(1,branch);
	ps.setString(2,sems);
	ps.setString(3,paper);
	ps.setString(4,ques);
	ps.setString(5,ans1);
	ps.setString(6,ans2);
	ps.setString(7,ans3);
	ps.setString(8,ans4);
	ps.setString(9,cans);
	ps.executeUpdate();
	// conn.close();
	String redirectURL = "addmore.jsp";
	response.sendRedirect(redirectURL);
%>