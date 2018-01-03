<%@page import="model.Reservation"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	Reservation reservation=(Reservation)request.getAttribute("Reservation");

%>
<h1><%=reservation.getRdate() %></h1>
<h1><%=reservation.getRdesignernum() %></h1>
<%for(int i=0;i<reservation.getRitem().size();i++){%>
	<h1><%=reservation.getRitem().get(i) %></h1>
<% }%>
</body>
</html>