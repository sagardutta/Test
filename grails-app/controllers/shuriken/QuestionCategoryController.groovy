package shuriken

import org.springframework.dao.DataIntegrityViolationException

class QuestionCategoryController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [questionCategoryInstanceList: QuestionCategory.list(params), questionCategoryInstanceTotal: QuestionCategory.count()]
    }

    def create() {
        [questionCategoryInstance: new QuestionCategory(params)]
    }

    def save() {
        def questionCategoryInstance = new QuestionCategory(params)
        if (!questionCategoryInstance.save(flush: true)) {
            render(view: "create", model: [questionCategoryInstance: questionCategoryInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'questionCategory.label', default: 'QuestionCategory'), questionCategoryInstance.id])
        redirect(action: "show", id: questionCategoryInstance.id)
    }

    def show(Long id) {
        def questionCategoryInstance = QuestionCategory.get(id)
        if (!questionCategoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'questionCategory.label', default: 'QuestionCategory'), id])
            redirect(action: "list")
            return
        }

        [questionCategoryInstance: questionCategoryInstance]
    }

    def edit(Long id) {
        def questionCategoryInstance = QuestionCategory.get(id)
        if (!questionCategoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'questionCategory.label', default: 'QuestionCategory'), id])
            redirect(action: "list")
            return
        }

        [questionCategoryInstance: questionCategoryInstance]
    }

    def update(Long id, Long version) {
        def questionCategoryInstance = QuestionCategory.get(id)
        if (!questionCategoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'questionCategory.label', default: 'QuestionCategory'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (questionCategoryInstance.version > version) {
                questionCategoryInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'questionCategory.label', default: 'QuestionCategory')] as Object[],
                          "Another user has updated this QuestionCategory while you were editing")
                render(view: "edit", model: [questionCategoryInstance: questionCategoryInstance])
                return
            }
        }

        questionCategoryInstance.properties = params

        if (!questionCategoryInstance.save(flush: true)) {
            render(view: "edit", model: [questionCategoryInstance: questionCategoryInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'questionCategory.label', default: 'QuestionCategory'), questionCategoryInstance.id])
        redirect(action: "show", id: questionCategoryInstance.id)
    }

    def delete(Long id) {
        def questionCategoryInstance = QuestionCategory.get(id)
        if (!questionCategoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'questionCategory.label', default: 'QuestionCategory'), id])
            redirect(action: "list")
            return
        }

        try {
            questionCategoryInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'questionCategory.label', default: 'QuestionCategory'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'questionCategory.label', default: 'QuestionCategory'), id])
            redirect(action: "show", id: id)
        }
    }
}
