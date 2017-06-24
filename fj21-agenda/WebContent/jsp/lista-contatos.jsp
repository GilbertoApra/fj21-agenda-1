<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@	taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/tarefas.css" rel="stylesheet">
<link href="css/jquery.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
<c:import url="cabecalho.jsp"/>
<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao"/>
<h2>Lista de Contatos</h2>
<table border="1">
<thead><tr>
<td align="center">Nome</td>
<td align="center">Email</td>
<td align="center">Endereço</td>
<td align="center">Data Nascimento</td>
<tr></thead>
<c:forEach var="cont" items="${dao.lista}" varStatus="id">
<tbody>
	<tr bgcolor="#${id.count % 2 == 0 ? '#63B8FF' : 'ffffff' }">
	<td>${cont.nome} </td>
	<td><c:choose>
	 <c:when test="${not empty cont.email}"><a href="mailto:${cont.email}">${cont.email}</a> </c:when>
	 <c:otherwise> e-mail não informado </c:otherwise>
	 </c:choose></td>
	<td >${cont.endereco} </td>
	<td align="center" ><f:formatDate value="${cont.dataNascimento.time}" pattern="dd/MM/yyyy"/> </td>
	</tr>
</tbody>
</c:forEach>
</table>
<c:import url="rodape.jsp"/>
</body>
</html>