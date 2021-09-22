
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="java.util.List, br.com.fiap.traveller.parque.servlet.Parque"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Listagem de Parques </h1>
<table border="1">
    <tr>
        <th>Nome do Parque</th>
        <th>Horário de Funcionamento</th>
        <th>Localização</th> 
        <th>Nota Avaliação</th> 
        <th>Ações</th>
    </tr>
       
  	<c:forEach items="${parques}" var="parque">
  		<tr>
	  		<td><a href="${parque.urlSiteOficial}" title="${parque.descricao}"> ${parque.nome}</a></td>
	  		<td>${parque.horarioFuncionamento}</td>
	  		<td>${parque.localizacao}</td>
  			<td>${parque.avaliacao}</td>
	  		<td>
				<a href="/fiap-traveller-parque-desafio/mostraDetalheParque?id=${parque.id}">Alterar </a>
			   	<a href="/fiap-traveller-parque-desafio/removeParque?id=${parque.id}">Excluir </a>
			</td>
  		</tr>
	</c:forEach>

   
</table>

	<!--<ul> -->
		
	<!--  passo 1 for (Parque parque:listaParques) {
			out.println("<li>" + parque.getNome() + "</li>");
			System.out.println(parque.getNome());
		}-->
		
		<!-- Passo 2 ajustar código para que o HTML entenda código Java
		<%
		List<Parque> parques = (List<Parque>) request.getAttribute("parques");
		for (Parque parque:parques) {
		%>
			<li> <%= parque.getNome()%>
			</li>
		
		<% }
		%> -->
		
	<!-- 	<c:forEach items="${parques}" var="parque">
			<li>${parque.nome}</li>
		</c:forEach> -->
		
	
	
	<!-- <c:forEach items="${parques}" var="parque">
			<li><a href="ssss=" title="${parque.descricao}">${parque.nome}</a></li>
		</c:forEach>
		
	</ul> -->	

</body>
</html>