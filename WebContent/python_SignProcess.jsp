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
	String sql ="SELECT mem_id FROM member WHERE mem_id = '" + mem_id +"' ";
	
	//
	ResultSet rs2 = null;
	
	//
	//rs = stmt.executeQuery(sql);
	
	String mem_id2 ="";
	
	if(mem_id.trim().equals(""))
		out.println("<script>alert('아이디 입력해주세요.'); history.back();</script>");
	else if(mem_name.trim().equals(""))
		out.println("<script>alert('이름을 입력해주세요.'); history.back();</script>");
	else if(mem_location.trim().equals(""))
		out.println("<script>alert('사는 지역을 입력해주세요'); history.back();</script>");
	else if(mem_aws.trim().equals(""))
		out.println("<script>alert('비밀번호 답을 입력해주세요(비밀번호 찾을 시 필요)'); history.back();</script>");
	else if(mem_pw1.trim().equals(""))
		out.println("<script>alert('비밀번호를 입력해주세요.'); history.back();</script>");
	else if(mem_pw2.trim().equals(""))
		out.println("<script>alert('비밀번호 확인를 입력해주세요.'); history.back();</script>");
	else if(mem_pw1.equals(mem_pw2)){
		rs = stmt.executeQuery(sql);
		while(rs.next()){
			mem_id2 = rs.getString("mem_id");
		}
		if(mem_id.equals(mem_id2))
			out.println("<script>alert('이미 사용중인 아이디입니다..'); history.back();</script>");
		else if(mem_pw1.equals(mem_pw2)){
			String sql2 ="INSERT INTO member(mem_id, mem_name, mem_location, mem_hint, mem_aws, mem_pw)";
			sql2 += "VALUES('" + mem_id + "', '" + mem_name + "', '";
			sql2 += mem_location +"', '"+mem_hint+"', '" + mem_aws + "', '" + mem_pw1 + "' )";
			
			stmt.executeUpdate(sql2);
			out.println("<script>alert('가입성공');history.go(-2)</script>");	
		}
		else{
			out.println("<script>alert('비밀번호가 일치하지 않습니다.'); history.back();</script>");
		stmt.close();
		conn.close();
		}
	}
	else
		out.println("<script>alert('비밀번호가 일치하지 않습니다.'); history.back();</script>");
%>
</body>
</html>