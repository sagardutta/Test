package shuriken

import org.springframework.dao.DataIntegrityViolationException

class ResponseCategoryController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [responseCategoryInstanceList: ResponseCategory.list(params), responseCategoryInstanceTotal: ResponseCategory.count()]
    }

    def create() {
        [responseCategoryInstance: new ResponseCategory(params)]
    }

    def save() {
        def responseCategoryInstance = new ResponseCategory(params)
        if (!responseCategoryInstance.save(flush: true)) {
            render(view: "create", model: [responseCategoryInstance: responseCategoryInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'responseCategory.label', default: 'ResponseCategory'), responseCategoryInstance.id])
        redirect(action: "show", id: responseCategoryInstance.id)
    }

    def show(Long id) {
        def responseCategoryInstance = ResponseCategory.get(id)
        if (!responseCategoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'responseCategory.label', default: 'ResponseCategory'), id])
            redirect(action: "list")
            return
        }

        [responseCategoryInstance: responseCategoryInstance]
    }

    def edit(Long id) {
        def responseCategoryInstance = ResponseCategory.get(id)
        if (!responseCategoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'responseCategory.label', default: 'ResponseCategory'), id])
            redirect(action: "list")
            return
        }

        [responseCategoryInstance: responseCategoryInstance]
    }

    def update(Long id, Long version) {
        def responseCategoryInstance = ResponseCategory.get(id)
        if (!responseCategoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'responseCategory.label', default: 'ResponseCategory'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (responseCategoryInstance.version > version) {
                responseCategoryInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'responseCategory.label', default: 'ResponseCategory')] as Object[],
                          "Another user has updated this ResponseCategory while you were editing")
                render(view: "edit", model: [responseCategoryInstance: responseCategoryInstance])
                return
            }
        }

        responseCategoryInstance.properties = params

        if (!responseCategoryInstance.save(flush: true)) {
            render(view: "edit", model: [responseCategoryInstance: responseCategoryInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'responseCategory.label', default: 'ResponseCategory'), responseCategoryInstance.id])
        redirect(action: "show", id: responseCategoryInstance.id)
    }

    def delete(Long id) {
        def responseCategoryInstance = ResponseCategory.get(id)
        if (!responseCategoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'responseCategory.label', default: 'ResponseCategory'), id])
            redirect(action: "list")
            return
        }

        try {
            responseCategoryInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'responseCategory.label', default: 'ResponseCategory'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'responseCategory.label', default: 'ResponseCategory'), id])
            redirect(action: "show", id: id)
        }
    }
}
