<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="poly.util.CmmUtil"%>
<%@ page import="poly.dto.ProjectsDTO"%>
<%
	//Controller로 부터 전달받은 데이터
	String msg = CmmUtil.nvl((String) request.getAttribute("msg"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 수정: 결과</title>
<script type="text/javascript">
	alert("<%=msg%>");
	document.location.href = "/index.do"
</script>
</head>
<body>
	<h1><%=msg%></h1>
</body>
</html>