package shuriken



import org.junit.*
import grails.test.mixin.*

@TestFor(ResponseChoiceController)
@Mock(ResponseChoice)
class ResponseChoiceControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/responseChoice/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.responseChoiceInstanceList.size() == 0
        assert model.responseChoiceInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.responseChoiceInstance != null
    }

    void testSave() {
        controller.save()

        assert model.responseChoiceInstance != null
        assert view == '/responseChoice/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/responseChoice/show/1'
        assert controller.flash.message != null
        assert ResponseChoice.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/responseChoice/list'

        populateValidParams(params)
        def responseChoice = new ResponseChoice(params)

        assert responseChoice.save() != null

        params.id = responseChoice.id

        def model = controller.show()

        assert model.responseChoiceInstance == responseChoice
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/responseChoice/list'

        populateValidParams(params)
        def responseChoice = new ResponseChoice(params)

        assert responseChoice.save() != null

        params.id = responseChoice.id

        def model = controller.edit()

        assert model.responseChoiceInstance == responseChoice
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/responseChoice/list'

        response.reset()

        populateValidParams(params)
        def responseChoice = new ResponseChoice(params)

        assert responseChoice.save() != null

        // test invalid parameters in update
        params.id = responseChoice.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/responseChoice/edit"
        assert model.responseChoiceInstance != null

        responseChoice.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/responseChoice/show/$responseChoice.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        responseChoice.clearErrors()

        populateValidParams(params)
        params.id = responseChoice.id
        params.version = -1
        controller.update()

        assert view == "/responseChoice/edit"
        assert model.responseChoiceInstance != null
        assert model.responseChoiceInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/responseChoice/list'

        response.reset()

        populateValidParams(params)
        def responseChoice = new ResponseChoice(params)

        assert responseChoice.save() != null
        assert ResponseChoice.count() == 1

        params.id = responseChoice.id

        controller.delete()

        assert ResponseChoice.count() == 0
        assert ResponseChoice.get(responseChoice.id) == null
        assert response.redirectedUrl == '/responseChoice/list'
    }
}
