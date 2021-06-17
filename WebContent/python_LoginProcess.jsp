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
	String mem_pw = request.getParameter("mem_pw");
	
	ResultSet rs = null;
	Statement stmt = conn.createStatement();
	String sql ="SELECT mem_pw FROM member WHERE mem_id='";
	sql +=mem_id +"'";
	
	rs = stmt.executeQuery(sql);
	String mem_pass2 ="";
	
	while(rs.next()){
		mem_pass2 = rs.getString("mem_pw");
	}
	
	if(mem_id.trim().equals(""))
		out.println("<script>alert('아이디를 입력해주세요'); history.back();</script>");
	
	else if(mem_pw.trim().equals(""))
		out.println("<script>alert('비밀번호를 입력해주세요'); history.back();</script>");
	else if(mem_pw.equals(mem_pass2)){
		
		
		
		//놀이공원 손목띠 같은 개념 가지고 있는 세션만 통과
		session.setAttribute("mem_id", mem_id);
		session.setAttribute("mem_pw", mem_pass2);
		//RequestDispatcher rd = request.getRequestDispatcher("Mini_MainDP.jsp");
		//rd.forward(request,response);
		
		pageContext.forward("python_MainDP.jsp");
		//페이지 이동하는 명령(형창이 jsp 파일 가져와야 됌)
		//response.sendRedirect("temp.html");
	
	}
	else
		out.println("<script>alert('아이디나 비밀번호가 잘못되었습니다.'); history.back();</script>");
	stmt.close();
	conn.close();
%>



</body>
</html>