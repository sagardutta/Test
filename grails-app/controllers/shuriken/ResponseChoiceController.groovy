package shuriken

import org.springframework.dao.DataIntegrityViolationException

class ResponseChoiceController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [responseChoiceInstanceList: ResponseChoice.list(params), responseChoiceInstanceTotal: ResponseChoice.count()]
    }

    def create() {
        [responseChoiceInstance: new ResponseChoice(params)]
    }

    def save() {
        def responseChoiceInstance = new ResponseChoice(params)
        if (!responseChoiceInstance.save(flush: true)) {
            render(view: "create", model: [responseChoiceInstance: responseChoiceInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'responseChoice.label', default: 'ResponseChoice'), responseChoiceInstance.id])
        redirect(action: "show", id: responseChoiceInstance.id)
    }

    def show(Long id) {
        def responseChoiceInstance = ResponseChoice.get(id)
        if (!responseChoiceInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'responseChoice.label', default: 'ResponseChoice'), id])
            redirect(action: "list")
            return
        }

        [responseChoiceInstance: responseChoiceInstance]
    }

    def edit(Long id) {
        def responseChoiceInstance = ResponseChoice.get(id)
        if (!responseChoiceInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'responseChoice.label', default: 'ResponseChoice'), id])
            redirect(action: "list")
            return
        }

        [responseChoiceInstance: responseChoiceInstance]
    }

    def update(Long id, Long version) {
        def responseChoiceInstance = ResponseChoice.get(id)
        if (!responseChoiceInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'responseChoice.label', default: 'ResponseChoice'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (responseChoiceInstance.version > version) {
                responseChoiceInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'responseChoice.label', default: 'ResponseChoice')] as Object[],
                          "Another user has updated this ResponseChoice while you were editing")
                render(view: "edit", model: [responseChoiceInstance: responseChoiceInstance])
                return
            }
        }

        responseChoiceInstance.properties = params

        if (!responseChoiceInstance.save(flush: true)) {
            render(view: "edit", model: [responseChoiceInstance: responseChoiceInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'responseChoice.label', default: 'ResponseChoice'), responseChoiceInstance.id])
        redirect(action: "show", id: responseChoiceInstance.id)
    }

    def delete(Long id) {
        def responseChoiceInstance = ResponseChoice.get(id)
        if (!responseChoiceInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'responseChoice.label', default: 'ResponseChoice'), id])
            redirect(action: "list")
            return
        }

        try {
            responseChoiceInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'responseChoice.label', default: 'ResponseChoice'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'responseChoice.label', default: 'ResponseChoice'), id])
            redirect(action: "show", id: id)
        }
    }
}
