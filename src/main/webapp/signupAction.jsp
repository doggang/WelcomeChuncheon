<%@ page import="java.io.PrintWriter"%>
<%@ page import="user.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
<% request.setCharacterEncoding("euc-kr"); %>
<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPW" />
<jsp:setProperty name="user" property="userName" />
<!DOCTYPE html>
<html>
<head>
<meta charset="euc-kr">
<title>JSP �Խ��� �� ����Ʈ</title>
</head>
<body>
	<%
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID=(String) session.getAttribute("userID");
		}
		if(userID != null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('�̹� �α����� �Ǿ��ֽ��ϴ�.')");
			script.println("location.href='index.jsp'");
			script.println("</script>");
		}
		
		if(user.getUserID() == null || user.getUserPW() == null || user.getUserName()==null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('�Է��� ���� ���� ĭ�� �ֽ��ϴ�.')");
			script.println("location.href='signup.jsp'");
			script.println("</script>");
		}else{
			UserDAO userDAO = new UserDAO();
			int result = userDAO.join(user);
			if(result == -1){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('�̹� �����ϴ� ���̵��Դϴ�.');");
				script.println("history.back()");
				script.println("</script>");
			}else{
				session.setAttribute("userID", user.getUserID());
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("location.href='login.jsp'");
				script.println("</script>");
			}
		}
		
	%>
</body>
</html>