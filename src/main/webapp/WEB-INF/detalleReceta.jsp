<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/Styles/index.css" rel="stylesheet">
<title>Detalle de la Receta</title>
</head>
<body>
	<h1>Detalle de la Receta</h1>

    <c:if test="${not empty mensajeError}">
        <p style="color: red;">${mensajeError}</p>
    </c:if>

    <c:if test="${empty mensajeError}">
        <h2>${nombreReceta}</h2>
        <ul>
            <c:forEach var="ingrediente" items="${ingredientes[nombreReceta]}">
                <li>${ingrediente}</li>
            </c:forEach>
        </ul>
    </c:if>
</body>
</html>