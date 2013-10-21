
<%@ page import="demograils.Tarea" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tarea.label', default: 'Tarea')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-tarea" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-tarea" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list tarea">
			
				<g:if test="${tareaInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="tarea.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${tareaInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tareaInstance?.fechaVencimiento}">
				<li class="fieldcontain">
					<span id="fechaVencimiento-label" class="property-label"><g:message code="tarea.fechaVencimiento.label" default="Fecha Vencimiento" /></span>
					
						<span class="property-value" aria-labelledby="fechaVencimiento-label"><g:formatDate date="${tareaInstance?.fechaVencimiento}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${tareaInstance?.descripcion}">
				<li class="fieldcontain">
					<span id="descripcion-label" class="property-label"><g:message code="tarea.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${tareaInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tareaInstance?.asignadaA}">
				<li class="fieldcontain">
					<span id="asignadaA-label" class="property-label"><g:message code="tarea.asignadaA.label" default="Asignada A" /></span>
					
						<span class="property-value" aria-labelledby="asignadaA-label"><g:link controller="usuarioFinal" action="show" id="${tareaInstance?.asignadaA?.id}">${tareaInstance?.asignadaA?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${tareaInstance?.esParteDelProyecto}">
				<li class="fieldcontain">
					<span id="esParteDelProyecto-label" class="property-label"><g:message code="tarea.esParteDelProyecto.label" default="Es Parte Del Proyecto" /></span>
					
						<span class="property-value" aria-labelledby="esParteDelProyecto-label"><g:link controller="proyecto" action="show" id="${tareaInstance?.esParteDelProyecto?.id}">${tareaInstance?.esParteDelProyecto?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${tareaInstance?.id}" />
					<g:link class="edit" action="edit" id="${tareaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
