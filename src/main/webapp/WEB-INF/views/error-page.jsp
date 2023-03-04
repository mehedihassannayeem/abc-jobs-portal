<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">

<!-- all necessary links, cdns -->
<%@ include file="./required-links-cdns.jsp"%>


<!-- on page style and script -->
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/header.css" />">


<title>Error | ABC Jobs Portal</title>

</head>

<body>
	<!-- common header -->
	<%@ include file="./header.jsp"%>
	
	<img class="d-block m-auto" alt="error page image" src="<c:url value="/resources/images/abc-content/error.png" />">

	<!-- common footer -->
	<%@ include file="./footer.jsp"%>
</body>

</html>