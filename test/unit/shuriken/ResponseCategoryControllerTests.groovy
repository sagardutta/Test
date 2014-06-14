package shuriken



import org.junit.*
import grails.test.mixin.*

@TestFor(ResponseCategoryController)
@Mock(ResponseCategory)
class ResponseCategoryControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/responseCategory/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.responseCategoryInstanceList.size() == 0
        assert model.responseCategoryInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.responseCategoryInstance != null
    }

    void testSave() {
        controller.save()

        assert model.responseCategoryInstance != null
        assert view == '/responseCategory/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/responseCategory/show/1'
        assert controller.flash.message != null
        assert ResponseCategory.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/responseCategory/list'

        populateValidParams(params)
        def responseCategory = new ResponseCategory(params)

        assert responseCategory.save() != null

        params.id = responseCategory.id

        def model = controller.show()

        assert model.responseCategoryInstance == responseCategory
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/responseCategory/list'

        populateValidParams(params)
        def responseCategory = new ResponseCategory(params)

        assert responseCategory.save() != null

        params.id = responseCategory.id

        def model = controller.edit()

        assert model.responseCategoryInstance == responseCategory
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/responseCategory/list'

        response.reset()

        populateValidParams(params)
        def responseCategory = new ResponseCategory(params)

        assert responseCategory.save() != null

        // test invalid parameters in update
        params.id = responseCategory.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/responseCategory/edit"
        assert model.responseCategoryInstance != null

        responseCategory.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/responseCategory/show/$responseCategory.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        responseCategory.clearErrors()

        populateValidParams(params)
        params.id = responseCategory.id
        params.version = -1
        controller.update()

        assert view == "/responseCategory/edit"
        assert model.responseCategoryInstance != null
        assert model.responseCategoryInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/responseCategory/list'

        response.reset()

        populateValidParams(params)
        def responseCategory = new ResponseCategory(params)

        assert responseCategory.save() != null
        assert ResponseCategory.count() == 1

        params.id = responseCategory.id

        controller.delete()

        assert ResponseCategory.count() == 0
        assert ResponseCategory.get(responseCategory.id) == null
        assert response.redirectedUrl == '/responseCategory/list'
    }
}
