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
	String mem_location = request.getParameter("mem_location");
	String mem_hint = request.getParameter("mem_hint");
	String mem_aws = request.getParameter("mem_aws");
	String mem_pw1 = request.getParameter("mem_pw1");
	String mem_pw2 = request.getParameter("mem_pw2");


	ResultSet rs = null;
	Statement stmt = conn.createStatement();
	String sql ="UPDATE member SET mem_name = '" + mem_name +"' ,"; 
	sql += "mem_location = '" + mem_location + "', mem_hint= '" + mem_hint + "', ";
	sql += "mem_aws = '" + mem_aws + "', mem_pw= '" + mem_pw1 +"' ";
	sql += "WHERE mem_id= '" + mem_id +"'";
	//rs = stmt.executeQuery(sql);
	
	if(mem_name.trim().equals(""))
		out.println("<script>alert('�̸��� �Է����ּ���.'); history.back();</script>");
	else if(mem_location.trim().equals(""))
		out.println("<script>alert('��� ������ �Է����ּ���'); history.back();</script>");
	else if(mem_aws.trim().equals(""))
		out.println("<script>alert('��й�ȣ ���� �Է����ּ���(��й�ȣ ã�� �� �ʿ�)'); history.back();</script>");
	else if(mem_pw1.trim().equals(""))
		out.println("<script>alert('��й�ȣ�� �Է����ּ���.'); history.back();</script>");
	else if(mem_pw2.trim().equals(""))
		out.println("<script>alert('��й�ȣ Ȯ�θ� �Է����ּ���.'); history.back();</script>");
	else if(mem_pw1.equals(mem_pw2)){	
		stmt.executeUpdate(sql);
		out.println("<script>alert('����Ϸ�');history.go(-2)</script>");					
	}
	else
		out.println("<script>alert('��й�ȣ�� ��ġ���� �ʽ��ϴ�.'); history.back();</script>");

%>
</body>
</html>