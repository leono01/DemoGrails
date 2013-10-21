<%@ page import="demograils.UsuarioFinal" %>



<div class="fieldcontain ${hasErrors(bean: usuarioFinalInstance, field: 'nombreCompleto', 'error')} ">
	<label for="nombreCompleto">
		<g:message code="usuarioFinal.nombreCompleto.label" default="Nombre Completo" />
		
	</label>
	<g:textField name="nombreCompleto" value="${usuarioFinalInstance?.nombreCompleto}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioFinalInstance, field: 'nombreDeUsuario', 'error')} ">
	<label for="nombreDeUsuario">
		<g:message code="usuarioFinal.nombreDeUsuario.label" default="Nombre De Usuario" />
		
	</label>
	<g:textField name="nombreDeUsuario" value="${usuarioFinalInstance?.nombreDeUsuario}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioFinalInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="usuarioFinal.password.label" default="Password" />
		
	</label>
	<g:textField name="password" value="${usuarioFinalInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioFinalInstance, field: 'proyectos', 'error')} ">
	<label for="proyectos">
		<g:message code="usuarioFinal.proyectos.label" default="Proyectos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${usuarioFinalInstance?.proyectos?}" var="p">
    <li><g:link controller="proyecto" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="proyecto" action="create" params="['usuarioFinal.id': usuarioFinalInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'proyecto.label', default: 'Proyecto')])}</g:link>
</li>
</ul>

</div>

