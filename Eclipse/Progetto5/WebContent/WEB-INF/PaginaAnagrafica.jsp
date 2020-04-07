<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pagina Anagrafica</title>
</head>
<body>
<jsp:include page="header.jsp" />
<h2>Invita Utenti</h2>
	<c:choose>
	<c:when test="${utenti.size()>0}">
	<c:url value="/CheckPartecipanti" var="url"/>
		<form method="post" action="${url}" >
			
			<c:forEach var="utente" items="${utenti}" >
				<input type ="checkbox" value = "${utente.getId()}" name="checkbox" ></input>
				<c:out value="${utente.getNome()}" />
				<c:out value="${utente.getCognome()}" />
				<br>
				
			</c:forEach>
			 <input type="submit" name="submit" value="Invita" />
							
			
			
		</form>
	</c:when>
	<c:otherwise>Non ci sono Utenti</c:otherwise>
			
	</c:choose>
	
</body>
</html>