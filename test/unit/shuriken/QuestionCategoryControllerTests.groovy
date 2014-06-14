package shuriken



import org.junit.*
import grails.test.mixin.*

@TestFor(QuestionCategoryController)
@Mock(QuestionCategory)
class QuestionCategoryControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/questionCategory/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.questionCategoryInstanceList.size() == 0
        assert model.questionCategoryInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.questionCategoryInstance != null
    }

    void testSave() {
        controller.save()

        assert model.questionCategoryInstance != null
        assert view == '/questionCategory/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/questionCategory/show/1'
        assert controller.flash.message != null
        assert QuestionCategory.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/questionCategory/list'

        populateValidParams(params)
        def questionCategory = new QuestionCategory(params)

        assert questionCategory.save() != null

        params.id = questionCategory.id

        def model = controller.show()

        assert model.questionCategoryInstance == questionCategory
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/questionCategory/list'

        populateValidParams(params)
        def questionCategory = new QuestionCategory(params)

        assert questionCategory.save() != null

        params.id = questionCategory.id

        def model = controller.edit()

        assert model.questionCategoryInstance == questionCategory
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/questionCategory/list'

        response.reset()

        populateValidParams(params)
        def questionCategory = new QuestionCategory(params)

        assert questionCategory.save() != null

        // test invalid parameters in update
        params.id = questionCategory.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/questionCategory/edit"
        assert model.questionCategoryInstance != null

        questionCategory.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/questionCategory/show/$questionCategory.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        questionCategory.clearErrors()

        populateValidParams(params)
        params.id = questionCategory.id
        params.version = -1
        controller.update()

        assert view == "/questionCategory/edit"
        assert model.questionCategoryInstance != null
        assert model.questionCategoryInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/questionCategory/list'

        response.reset()

        populateValidParams(params)
        def questionCategory = new QuestionCategory(params)

        assert questionCategory.save() != null
        assert QuestionCategory.count() == 1

        params.id = questionCategory.id

        controller.delete()

        assert QuestionCategory.count() == 0
        assert QuestionCategory.get(questionCategory.id) == null
        assert response.redirectedUrl == '/questionCategory/list'
    }
}
