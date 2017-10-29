<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
    <c:when test="${empty usuario}">
        I see!  You don't have a name.. well.. Hello no name
    </c:when>
    <c:otherwise>
        Usuário ${usuario.email} logado
    </c:otherwise>
</c:choose>
</body>
</html>