<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="poly.util.CmmUtil" %>
<%
String jspRes = CmmUtil.nvl((String)request.getAttribute("res"), "0");
 %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AllForYou</title>
</head>
<body>

<% 
if (jspRes.equals("1")){
%>		
	<script>
	alert('문의가 접수되었습니다.\n관리자가 검토후 친절히 답변해드리겠습니다.')
	document.location.href="/index.do"
	</script>

<% 
} else{
%>
	<script>
	alert('문의 내역 전송에 실패하였습니다.')
	document.location.href="/index.do"
	</script>
<%
}
%>	
</body>
</html>
