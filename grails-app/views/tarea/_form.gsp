<%@ page import="demograils.Tarea" %>



<div class="fieldcontain ${hasErrors(bean: tareaInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="tarea.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${tareaInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tareaInstance, field: 'fechaVencimiento', 'error')} required">
	<label for="fechaVencimiento">
		<g:message code="tarea.fechaVencimiento.label" default="Fecha Vencimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaVencimiento" precision="day"  value="${tareaInstance?.fechaVencimiento}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: tareaInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="tarea.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${tareaInstance?.descripcion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tareaInstance, field: 'asignadaA', 'error')} required">
	<label for="asignadaA">
		<g:message code="tarea.asignadaA.label" default="Asignada A" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="asignadaA" name="asignadaA.id" from="${demograils.UsuarioFinal.list()}" optionKey="id" required="" value="${tareaInstance?.asignadaA?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tareaInstance, field: 'esParteDelProyecto', 'error')} required">
	<label for="esParteDelProyecto">
		<g:message code="tarea.esParteDelProyecto.label" default="Es Parte Del Proyecto" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="esParteDelProyecto" name="esParteDelProyecto.id" from="${demograils.Proyecto.list()}" optionKey="id" required="" value="${tareaInstance?.esParteDelProyecto?.id}" class="many-to-one"/>
</div>

