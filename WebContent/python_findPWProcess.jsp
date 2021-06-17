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
	String mem_id = request.getParameter("mem_id");
	String mem_name = request.getParameter("mem_name");
	String mem_hint = request.getParameter("mem_hint");
	String mem_aws = request.getParameter("mem_aws");
	ResultSet rs = null;
	Statement stmt = conn.createStatement();
	
	String sql = "SELECT mem_pw FROM member WHERE mem_id='" + mem_id + "' and mem_name='"+mem_name+"' and mem_hint='";
	sql += mem_hint +"' and mem_aws='";
	sql += mem_aws +"'";
	rs = stmt.executeQuery(sql);
	
	String mem_pw="";
	
	if(rs.next()) {
		mem_pw = rs.getString("mem_pw");
		out.println("<script>alert('Password : "+mem_pw+"'); history.back(2);</script>");
	}else{
		out.println("잘못된 가입 정보입니다.<br>");
		out.println(sql);
	}
%>
</body>
</html>