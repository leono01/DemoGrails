
<%@ page import="demograils.UsuarioFinal" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuarioFinal.label', default: 'UsuarioFinal')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-usuarioFinal" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-usuarioFinal" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nombreCompleto" title="${message(code: 'usuarioFinal.nombreCompleto.label', default: 'Nombre Completo')}" />
					
						<g:sortableColumn property="nombreDeUsuario" title="${message(code: 'usuarioFinal.nombreDeUsuario.label', default: 'Nombre De Usuario')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'usuarioFinal.password.label', default: 'Password')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${usuarioFinalInstanceList}" status="i" var="usuarioFinalInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${usuarioFinalInstance.id}">${fieldValue(bean: usuarioFinalInstance, field: "nombreCompleto")}</g:link></td>
					
						<td>${fieldValue(bean: usuarioFinalInstance, field: "nombreDeUsuario")}</td>
					
						<td>${fieldValue(bean: usuarioFinalInstance, field: "password")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${usuarioFinalInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
