<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="euc-kr">
<title>JSP �Խ��� �� ����Ʈ</title>
</head>
<body>
	<%
		session.invalidate();
	%>
	<script>
		location.href='index.jsp';
	</script>
</body>
</html>