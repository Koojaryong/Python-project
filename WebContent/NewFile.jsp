<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<script>
            L_NO_TOUCH = false;
            L_DISABLE_3D = false;
            
            String mem_id = session.getAttribute("mem_id", mem_id);  
            String mem_pass = session.getAttribute("mem_pass",mem_pass);
            
            
          	function intoMypage(){
          		
          		if(mem_id =="undefined" || mem_id ==null || mem_id ==""){  
          			alert('Please log in'); history.back();        			
          			return;
          		}
          		else {
          			session.setAttribute("mem_id", mem_id);
          			session.setAttribute("mem_pw", mem_pass2);
          			
          			pageContext.forward("python_mypage.jsp");
          		}
          	}
            	
</script>
</head>
<body>

</body>
</html>