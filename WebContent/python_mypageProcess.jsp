<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%@ include file="python_conn.jsp" %>

<%
	String mem_id = (String) session.getAttribute("mem_id");
	String mem_pass = (String) session.getAttribute("mem_pass");
	
	if(mem_id =="undefined" || mem_id ==null || mem_id ==""){
		out.println("<script>alert('Please log in'); history.back();</script>");
		return;
	}
%>

<%
	
	String mem_id1 = request.getParameter("mem_id");
	String mem_name = request.getParameter("mem_name");
	String mem_location = request.getParameter("mem_location");
	String mem_hint = request.getParameter("mem_hint");
	String mem_aws = request.getParameter("mem_aws");
	String mem_pw1 = request.getParameter("mem_pw1");
	String mem_pw2 = request.getParameter("mem_pw2");


	ResultSet rs = null;
	Statement stmt = conn.createStatement();
	String sql ="SELECT * FROM member WHERE mem_id = '" + mem_id +"' ";
	
	rs = stmt.executeQuery(sql);
	
	String mem_id2="";
	String mem_name2="";
	String mem_location2="";
	String mem_hint2="";
	String mem_aws2="";
	String mem_pw="";
	
	while(rs.next()){
		mem_id2 = rs.getString("mem_id");
		mem_name2 = rs.getString("mem_name");
		mem_location2 = rs.getString("mem_location");
		mem_hint2 = rs.getString("mem_hint");
		mem_aws2 = rs.getString("mem_aws");
		mem_pw = rs.getString("mem_pw");
	}
	
	session.setAttribute("mem_id2", mem_id2);
	session.setAttribute("mem_name2", mem_name2);
	session.setAttribute("mem_location2", mem_location2);
	session.setAttribute("mem_hint2", mem_hint2);
	session.setAttribute("mem_aws2", mem_aws2);
	session.setAttribute("mem_pw", mem_pw);
	//RequestDispatcher rd = request.getRequestDispatcher("Mini_MainDP.jsp");
	//rd.forward(request,response);
	
	pageContext.forward("python_mypage.jsp");
	
	
	

%>
</body>
</html>