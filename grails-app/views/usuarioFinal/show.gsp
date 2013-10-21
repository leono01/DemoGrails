
<%@ page import="demograils.UsuarioFinal" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuarioFinal.label', default: 'UsuarioFinal')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-usuarioFinal" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-usuarioFinal" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list usuarioFinal">
			
				<g:if test="${usuarioFinalInstance?.nombreCompleto}">
				<li class="fieldcontain">
					<span id="nombreCompleto-label" class="property-label"><g:message code="usuarioFinal.nombreCompleto.label" default="Nombre Completo" /></span>
					
						<span class="property-value" aria-labelledby="nombreCompleto-label"><g:fieldValue bean="${usuarioFinalInstance}" field="nombreCompleto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioFinalInstance?.nombreDeUsuario}">
				<li class="fieldcontain">
					<span id="nombreDeUsuario-label" class="property-label"><g:message code="usuarioFinal.nombreDeUsuario.label" default="Nombre De Usuario" /></span>
					
						<span class="property-value" aria-labelledby="nombreDeUsuario-label"><g:fieldValue bean="${usuarioFinalInstance}" field="nombreDeUsuario"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioFinalInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="usuarioFinal.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${usuarioFinalInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioFinalInstance?.proyectos}">
				<li class="fieldcontain">
					<span id="proyectos-label" class="property-label"><g:message code="usuarioFinal.proyectos.label" default="Proyectos" /></span>
					
						<g:each in="${usuarioFinalInstance.proyectos}" var="p">
						<span class="property-value" aria-labelledby="proyectos-label"><g:link controller="proyecto" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${usuarioFinalInstance?.id}" />
					<g:link class="edit" action="edit" id="${usuarioFinalInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
