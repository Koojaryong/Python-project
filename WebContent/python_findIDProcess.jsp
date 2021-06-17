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
	String mem_name = request.getParameter("mem_name");
	String mem_hint = request.getParameter("mem_hint");
	String mem_aws = request.getParameter("mem_aws");
	ResultSet rs = null;
	Statement stmt = conn.createStatement();
	
	String sql = "SELECT mem_id FROM member WHERE mem_name='"+mem_name+"' and mem_hint='";
	sql += mem_hint +"' and mem_aws='";
	sql += mem_aws +"'";
	rs = stmt.executeQuery(sql);
	
	String mem_id="";
	
	if(rs.next()) {
		mem_id = rs.getString("mem_id");
		out.println("<script>alert('ID : "+mem_id+"'); history.back(2);</script>");
	}else{
		out.println("잘못된 가입 정보입니다.<br>");
		out.println(sql);
	}
%>

</body>
</html>

<style>
            .search-box{position: absolute;
             			left: 50%;
             			transform:translateX(-50%);
              			width: 500px;}
			.select-form{width: 67%; 
						margin:0 auto; 
						border-top-left-radius:50px; 
						border-bottom-left-radius:50px;
						}
			.select-itms{border-top-left-radius:50px; 
						border-bottom-left-radius:50px;}
			.imagebox{
			display: flex;
			margin: 0 auto;
			}
			.image{
			    width: 47%;
			    margin: 0 auto;
			}
			.image2{
			    width: 37%;
			    margin: 10px;
			}
            </style>