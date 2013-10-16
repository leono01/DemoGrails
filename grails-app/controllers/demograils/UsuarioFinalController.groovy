package demograils

import org.springframework.dao.DataIntegrityViolationException

class UsuarioFinalController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [usuarioFinalInstanceList: UsuarioFinal.list(params), usuarioFinalInstanceTotal: UsuarioFinal.count()]
    }

    def create() {
        [usuarioFinalInstance: new UsuarioFinal(params)]
    }

    def save() {
        def usuarioFinalInstance = new UsuarioFinal(params)
        if (!usuarioFinalInstance.save(flush: true)) {
            render(view: "create", model: [usuarioFinalInstance: usuarioFinalInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'usuarioFinal.label', default: 'UsuarioFinal'), usuarioFinalInstance.id])
        redirect(action: "show", id: usuarioFinalInstance.id)
    }

    def show(Long id) {
        def usuarioFinalInstance = UsuarioFinal.get(id)
        if (!usuarioFinalInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'usuarioFinal.label', default: 'UsuarioFinal'), id])
            redirect(action: "list")
            return
        }

        [usuarioFinalInstance: usuarioFinalInstance]
    }

    def edit(Long id) {
        def usuarioFinalInstance = UsuarioFinal.get(id)
        if (!usuarioFinalInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'usuarioFinal.label', default: 'UsuarioFinal'), id])
            redirect(action: "list")
            return
        }

        [usuarioFinalInstance: usuarioFinalInstance]
    }

    def update(Long id, Long version) {
        def usuarioFinalInstance = UsuarioFinal.get(id)
        if (!usuarioFinalInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'usuarioFinal.label', default: 'UsuarioFinal'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (usuarioFinalInstance.version > version) {
                usuarioFinalInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'usuarioFinal.label', default: 'UsuarioFinal')] as Object[],
                          "Another user has updated this UsuarioFinal while you were editing")
                render(view: "edit", model: [usuarioFinalInstance: usuarioFinalInstance])
                return
            }
        }

        usuarioFinalInstance.properties = params

        if (!usuarioFinalInstance.save(flush: true)) {
            render(view: "edit", model: [usuarioFinalInstance: usuarioFinalInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'usuarioFinal.label', default: 'UsuarioFinal'), usuarioFinalInstance.id])
        redirect(action: "show", id: usuarioFinalInstance.id)
    }

    def delete(Long id) {
        def usuarioFinalInstance = UsuarioFinal.get(id)
        if (!usuarioFinalInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'usuarioFinal.label', default: 'UsuarioFinal'), id])
            redirect(action: "list")
            return
        }

        try {
            usuarioFinalInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'usuarioFinal.label', default: 'UsuarioFinal'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'usuarioFinal.label', default: 'UsuarioFinal'), id])
            redirect(action: "show", id: id)
        }
    }
}
