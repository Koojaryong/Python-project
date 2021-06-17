<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="python_LoginProcess.jsp" method="post" >
        <h3 class="h4 text-black mb-4">Login</h3>
        <div class="form-group">
          <input type="text" class="form-control" placeholder="ID" name="mem_id">
        </div>
        <div class="form-group">
          <input type="password" class="form-control" placeholder="Password" name ="mem_pw">
        </div>
        <div class="form-group">
          <input type="submit" class="btn btn-primary btn-pill" value="Login">
        </div>
     </form>
    <form action= "python_SignDP.jsp" method="post">
         <input type="submit" class="btn btn-primary btn-pill" value="Sign up">     
	</form>
</body>
</html>