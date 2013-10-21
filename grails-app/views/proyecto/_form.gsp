<%@ page import="demograils.Proyecto" %>



<div class="fieldcontain ${hasErrors(bean: proyectoInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="proyecto.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${proyectoInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: proyectoInstance, field: 'fechaVencimiento', 'error')} required">
	<label for="fechaVencimiento">
		<g:message code="proyecto.fechaVencimiento.label" default="Fecha Vencimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaVencimiento" precision="day"  value="${proyectoInstance?.fechaVencimiento}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: proyectoInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="proyecto.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${proyectoInstance?.descripcion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: proyectoInstance, field: 'dueno', 'error')} required">
	<label for="dueno">
		<g:message code="proyecto.dueno.label" default="Dueno" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="dueno" name="dueno.id" from="${demograils.UsuarioFinal.list()}" optionKey="id" required="" value="${proyectoInstance?.dueno?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: proyectoInstance, field: 'tareas', 'error')} ">
	<label for="tareas">
		<g:message code="proyecto.tareas.label" default="Tareas" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${proyectoInstance?.tareas?}" var="t">
    <li><g:link controller="tarea" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="tarea" action="create" params="['proyecto.id': proyectoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'tarea.label', default: 'Tarea')])}</g:link>
</li>
</ul>

</div>

